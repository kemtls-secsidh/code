use crate::msgs::enums::{SignatureAlgorithm, SignatureScheme};
use crate::key;
use crate::error::TLSError;

use ring::{self, signature::{self, EcdsaKeyPair, Ed25519KeyPair, RsaKeyPair}};
use oqs;
use webpki;

use std::{sync::Arc, convert::TryInto};
use std::mem;

pub(crate) fn webpki_nike_to_sigscheme(webpkischeme: &'static webpki::NikeAlgorithm) -> SignatureScheme {
    include!("generated/webpki_nike_to_sigalg.rs");

    unreachable!("shouldn't be able to get here. please regenerate sources")
}

/// An abstract signing key.
pub trait SigningKey : Send + Sync {
    /// Choose a `SignatureScheme` from those offered.
    ///
    /// Expresses the choice by returning something that implements `Signer`,
    /// using the chosen scheme.
    fn choose_scheme(&self, offered: &[SignatureScheme]) -> Option<Box<dyn Signer>>;

    /// What kind of key we have.
    fn algorithm(&self) -> SignatureAlgorithm;

    /// Get bytes
    fn get_bytes(&self) -> &[u8] {
        unimplemented!()
    }
}

/// A thing that can sign a message.
pub trait Signer : Send + Sync {
    /// Signs `message` using the selected scheme.
    fn sign(&self, message: &[u8]) -> Result<Vec<u8>, TLSError>;

    /// Reveals which scheme will be used when you call `sign()`.
    fn get_scheme(&self) -> SignatureScheme;
}

/// A packaged-together certificate chain, matching `SigningKey` and
/// optional stapled OCSP response and/or SCT list.
#[derive(Clone)]
pub struct CertifiedKey {
    /// The certificate chain.
    pub cert: Vec<key::Certificate>,

    /// The certified key.
    pub key: Arc<Box<dyn SigningKey>>,

    /// An optional OCSP response from the certificate issuer,
    /// attesting to its continued validity.
    pub ocsp: Option<Vec<u8>>,

    /// An optional collection of SCTs from CT logs, proving the
    /// certificate is included on those logs.  This must be
    /// a `SignedCertificateTimestampList` encoding; see RFC6962.
    pub sct_list: Option<Vec<u8>>,
}

impl CertifiedKey {
    /// Make a new CertifiedKey, with the given chain and key.
    ///
    /// The cert chain must not be empty. The first certificate in the chain
    /// must be the end-entity certificate.
    pub fn new(cert: Vec<key::Certificate>, key: Arc<Box<dyn SigningKey>>) -> CertifiedKey {
        CertifiedKey {
            cert,
            key,
            ocsp: None,
            sct_list: None,
        }
    }

    /// The end-entity certificate.
    pub fn end_entity_cert(&self) -> Result<&key::Certificate, ()> {
        self.cert.get(0).ok_or(())
    }

    /// Steal ownership of the certificate chain.
    pub fn take_cert(&mut self) -> Vec<key::Certificate> {
        mem::replace(&mut self.cert, Vec::new())
    }

    /// Return true if there's an OCSP response.
    pub fn has_ocsp(&self) -> bool {
        self.ocsp.is_some()
    }

    /// Steal ownership of the OCSP response.
    pub fn take_ocsp(&mut self) -> Option<Vec<u8>> {
        mem::replace(&mut self.ocsp, None)
    }

    /// Return true if there's an SCT list.
    pub fn has_sct_list(&self) -> bool {
        self.sct_list.is_some()
    }

    /// Steal ownership of the SCT list.
    pub fn take_sct_list(&mut self) -> Option<Vec<u8>> {
        mem::replace(&mut self.sct_list, None)
    }

    /// Check the certificate chain for validity:
    /// - it should be non-empty list
    /// - the first certificate should be parsable as a x509v3,
    /// - the first certificate should quote the given server name
    ///   (if provided)
    ///
    /// These checks are not security-sensitive.  They are the
    /// *server* attempting to detect accidental misconfiguration.
    pub fn cross_check_end_entity_cert(&self, name: Option<webpki::DNSNameRef>) -> Result<(), TLSError> {
        // Always reject an empty certificate chain.
        let end_entity_cert = self.end_entity_cert().map_err(|()| {
            TLSError::General("No end-entity certificate in certificate chain".to_string())
        })?;

        // Reject syntactically-invalid end-entity certificates.
        let end_entity_cert = webpki::EndEntityCert::from(end_entity_cert.as_ref()).map_err(|_| {
                TLSError::General("End-entity certificate in certificate \
                                  chain is syntactically invalid".to_string())
        })?;

        if let Some(name) = name {
            // If SNI was offered then the certificate must be valid for
            // that hostname. Note that this doesn't fully validate that the
            // certificate is valid; it only validates that the name is one
            // that the certificate is valid for, if the certificate is
            // valid.
            if end_entity_cert.verify_is_valid_for_dns_name(name).is_err() {
                return Err(TLSError::General("The server certificate is not \
                                             valid for the given name".to_string()));
            }
        }

        Ok(())
    }
}

/// Parse `der` as any supported key encoding/type, returning
/// the first which works.
pub fn any_supported_type(der: &key::PrivateKey) -> Result<Box<dyn SigningKey>, ()> {
    if let Ok(rsa) = RSASigningKey::new(der) {
        Ok(Box::new(rsa))
    } else if let Ok(ecdsa) = any_ecdsa_type(der) {
        Ok(ecdsa)
    } else if let Ok(pqsig) = any_pqsig_type(der) {
        Ok(pqsig)
    } else {
        any_eddsa_type(der)
    }
}

/// Parse `der` as any ECDSA key type, returning the first which works.
pub fn any_ecdsa_type(der: &key::PrivateKey) -> Result<Box<dyn SigningKey>, ()> {
    if let Ok(ecdsa_p256) = ECDSASigningKey::new(der,
                                                 SignatureScheme::ECDSA_NISTP256_SHA256,
                                                 &signature::ECDSA_P256_SHA256_ASN1_SIGNING) {
        return Ok(Box::new(ecdsa_p256));
    }

    if let Ok(ecdsa_p384) = ECDSASigningKey::new(der,
                                                 SignatureScheme::ECDSA_NISTP384_SHA384,
                                                 &signature::ECDSA_P384_SHA384_ASN1_SIGNING) {
        return Ok(Box::new(ecdsa_p384));
    }

    Err(())
}

/// Parse `der` as any EdDSA key type, returning the first which works.
pub fn any_eddsa_type(der: &key::PrivateKey) -> Result<Box<dyn SigningKey>, ()> {
    if let Ok(ed25519) = Ed25519SigningKey::new(der,
                                                SignatureScheme::ED25519) {
        return Ok(Box::new(ed25519));
    }

    // TODO: Add support for Ed448

    Err(())
}

/// Get PQ signature scheme from der, if it is one
pub fn any_pqsig_type(der: &key::PrivateKey) -> Result<Box<dyn SigningKey>, ()> {
    for scheme in include!("generated/pq_sigschemes.rs") {
        if let Ok(key) = PQSigningKey::new(der, *scheme) {
            return Ok(Box::new(key));
        }
    }
    for scheme in include!("generated/pq_kemschemes.rs") {
        if let Ok(key) = PQKemKey::new(der, *scheme) {
            return Ok(Box::new(key));
        }
    }

    for scheme in include!("generated/nikes.rs") {
        if let Ok(key) = NikeKey::new(der, *scheme) {
            return Ok(Box::new(key))
        }
    }
    Err(())
}

/// A `SigningKey` for RSA-PKCS1 or RSA-PSS
pub struct RSASigningKey {
    key: Arc<RsaKeyPair>,
}

static ALL_RSA_SCHEMES: &[SignatureScheme] = &[
     SignatureScheme::RSA_PSS_SHA512,
     SignatureScheme::RSA_PSS_SHA384,
     SignatureScheme::RSA_PSS_SHA256,
     SignatureScheme::RSA_PKCS1_SHA512,
     SignatureScheme::RSA_PKCS1_SHA384,
     SignatureScheme::RSA_PKCS1_SHA256,
];

impl RSASigningKey {
    /// Make a new `RSASigningKey` from a DER encoding, in either
    /// PKCS#1 or PKCS#8 format.
    pub fn new(der: &key::PrivateKey) -> Result<RSASigningKey, ()> {
        RsaKeyPair::from_der(&der.0)
            .or_else(|_| RsaKeyPair::from_pkcs8(&der.0))
            .map(|s| {
                 RSASigningKey {
                     key: Arc::new(s),
                 }
            })
            .map_err(|_| ())
    }
}

impl SigningKey for RSASigningKey {
    fn choose_scheme(&self, offered: &[SignatureScheme]) -> Option<Box<dyn Signer>> {
        ALL_RSA_SCHEMES
            .iter()
            .filter(|scheme| offered.contains(scheme))
            .nth(0)
            .map(|scheme| RSASigner::new(self.key.clone(), *scheme))
    }

    fn algorithm(&self) -> SignatureAlgorithm {
        SignatureAlgorithm::RSA
    }
}

struct RSASigner {
    key: Arc<RsaKeyPair>,
    scheme: SignatureScheme,
    encoding: &'static dyn signature::RsaEncoding
}

impl RSASigner {
    fn new(key: Arc<RsaKeyPair>, scheme: SignatureScheme) -> Box<dyn Signer> {
        let encoding: &dyn signature::RsaEncoding = match scheme {
            SignatureScheme::RSA_PKCS1_SHA256 => &signature::RSA_PKCS1_SHA256,
            SignatureScheme::RSA_PKCS1_SHA384 => &signature::RSA_PKCS1_SHA384,
            SignatureScheme::RSA_PKCS1_SHA512 => &signature::RSA_PKCS1_SHA512,
            SignatureScheme::RSA_PSS_SHA256 => &signature::RSA_PSS_SHA256,
            SignatureScheme::RSA_PSS_SHA384 => &signature::RSA_PSS_SHA384,
            SignatureScheme::RSA_PSS_SHA512 => &signature::RSA_PSS_SHA512,
            _ => unreachable!(),
        };

        Box::new(RSASigner { key, scheme, encoding })
    }
}

impl Signer for RSASigner {
    fn sign(&self, message: &[u8]) -> Result<Vec<u8>, TLSError> {
        let mut sig = vec![0; self.key.public_modulus_len()];

        let rng = ring::rand::SystemRandom::new();
        self.key.sign(self.encoding, &rng, message, &mut sig)
            .map(|_| sig)
            .map_err(|_| TLSError::General("signing failed".to_string()))
    }

    fn get_scheme(&self) -> SignatureScheme {
        self.scheme
    }
}

/// A SigningKey that uses exactly one TLS-level SignatureScheme
/// and one ring-level signature::SigningAlgorithm.
///
/// Compare this to RSASigningKey, which for a particular key is
/// willing to sign with several algorithms.  This is quite poor
/// cryptography practice, but is necessary because a given RSA key
/// is expected to work in TLS1.2 (PKCS#1 signatures) and TLS1.3
/// (PSS signatures) -- nobody is willing to obtain certificates for
/// different protocol versions.
///
/// Currently this is only implemented for ECDSA keys.
struct ECDSASigningKey {
    key: Arc<EcdsaKeyPair>,
    scheme: SignatureScheme,
}

impl ECDSASigningKey {
    /// Make a new `ECDSASigningKey` from a DER encoding in PKCS#8 format,
    /// expecting a key usable with precisely the given signature scheme.
    pub fn new(der: &key::PrivateKey,
               scheme: SignatureScheme,
               sigalg: &'static signature::EcdsaSigningAlgorithm) -> Result<ECDSASigningKey, ()> {
        EcdsaKeyPair::from_pkcs8(sigalg, &der.0)
            .map(|kp| ECDSASigningKey { key: Arc::new(kp), scheme })
            .map_err(|_| ())
    }
}

impl SigningKey for ECDSASigningKey {
    fn choose_scheme(&self, offered: &[SignatureScheme]) -> Option<Box<dyn Signer>> {
        if offered.contains(&self.scheme) {
            Some(Box::new(ECDSASigner { key: self.key.clone(), scheme: self.scheme } ))
        } else {
            None
        }
    }

    fn algorithm(&self) -> SignatureAlgorithm {
        use crate::msgs::handshake::DecomposedSignatureScheme;
        self.scheme.sign()
    }
}

struct ECDSASigner {
    key: Arc<EcdsaKeyPair>,
    scheme: SignatureScheme,
}

impl Signer for ECDSASigner {
    fn sign(&self, message: &[u8]) -> Result<Vec<u8>, TLSError> {
        let rng = ring::rand::SystemRandom::new();
        self.key.sign(&rng, message)
            .map_err(|_| TLSError::General("signing failed".into()))
            .map(|sig| sig.as_ref().into())
    }

    fn get_scheme(&self) -> SignatureScheme {
        self.scheme
    }
}

/// A SigningKey that uses exactly one TLS-level SignatureScheme
/// and one ring-level signature::SigningAlgorithm.
///
/// Compare this to RSASigningKey, which for a particular key is
/// willing to sign with several algorithms.  This is quite poor
/// cryptography practice, but is necessary because a given RSA key
/// is expected to work in TLS1.2 (PKCS#1 signatures) and TLS1.3
/// (PSS signatures) -- nobody is willing to obtain certificates for
/// different protocol versions.
///
/// Currently this is only implemented for Ed25519 keys.
struct Ed25519SigningKey {
    key: Arc<Ed25519KeyPair>,
    scheme: SignatureScheme,
}

impl Ed25519SigningKey {
    /// Make a new `Ed25519SigningKey` from a DER encoding in PKCS#8 format,
    /// expecting a key usable with precisely the given signature scheme.
    pub fn new(der: &key::PrivateKey,
               scheme: SignatureScheme) -> Result<Ed25519SigningKey, ()> {
        Ed25519KeyPair::from_pkcs8_maybe_unchecked(&der.0)
            .map(|kp| Ed25519SigningKey { key: Arc::new(kp), scheme })
            .map_err(|_| ())
    }
}

impl SigningKey for Ed25519SigningKey {
    fn choose_scheme(&self, offered: &[SignatureScheme]) -> Option<Box<dyn Signer>> {
        if offered.contains(&self.scheme) {
            Some(Box::new(Ed25519Signer { key: self.key.clone(), scheme: self.scheme } ))
        } else {
            None
        }
    }

    fn algorithm(&self) -> SignatureAlgorithm {
        use crate::msgs::handshake::DecomposedSignatureScheme;
        self.scheme.sign()
    }
}

struct Ed25519Signer {
    key: Arc<Ed25519KeyPair>,
    scheme: SignatureScheme,
}

impl Signer for Ed25519Signer {
    fn sign(&self, message: &[u8]) -> Result<Vec<u8>, TLSError> {
        Ok(self.key.sign(message).as_ref().into())
    }

    fn get_scheme(&self) -> SignatureScheme {
        self.scheme
    }
}

struct PQSigningKey {
    key: Arc<Vec<u8>>,
    scheme: SignatureScheme,
}

impl PQSigningKey {
    fn new(der: &key::PrivateKey, scheme: SignatureScheme) -> Result<PQSigningKey, ()> {
        use ring::io::der;

        let expected_alg_id = include!("generated/scheme_to_oid.rs");

        let input = untrusted::Input::from(&der.0);
        input.read_all((), |input| {
            der::nested(input, der::Tag::Sequence, (), |input| {
                let version = der::small_nonnegative_integer(input)
                    .map_err(|e| { panic!("{:?}", e) })?;
                assert!(version <= 1);

                let alg_id = der::expect_tag_and_get_value(input, der::Tag::Sequence)
                    .map_err(|_| { panic!("getting oid failed") })?;
                if alg_id.as_slice_less_safe() != expected_alg_id {
                    crate::log::trace!("Alg ID didn't match for {:?}", scheme);
                    return Err(())
                } else {
                    crate::log::trace!("Did match for {:?}", scheme);
                }

                let private_key = der::expect_tag_and_get_value(input, der::Tag::OctetString)
                    .map_err(|e| { panic!("{:?}", e) })?;

                if scheme != SignatureScheme::XMSS1 && scheme != SignatureScheme::XMSS3 && scheme != SignatureScheme::XMSS5 {
                    let oqsalg = include!("generated/sigscheme_to_oqsalg.rs");
                    oqs::init();
                    let oqsalg = oqs::sig::Sig::new(oqsalg).unwrap();
                    assert_eq!(private_key.len(), oqsalg.length_secret_key(), "secret key length wrong for {:?}", scheme);
                }

                Ok(private_key.as_slice_less_safe().to_vec())
         })
            .map(|key| PQSigningKey{ key: Arc::new(key), scheme })
        })
    }
}

impl SigningKey for PQSigningKey {
    fn choose_scheme(&self, offered: &[SignatureScheme]) -> Option<Box<dyn Signer>> {
        if offered.contains(&self.scheme) {
            Some(Box::new(PQSigner { key: self.key.clone(), scheme: self.scheme}))
        } else {
            None
        }
    }

    fn algorithm(&self) -> SignatureAlgorithm {
        include!("generated/pq_sigscheme_to_sigalg.rs")
    }
}

struct PQSigner {
    key: Arc<Vec<u8>>,
    scheme: SignatureScheme,
}

impl Signer for PQSigner {
    fn sign(&self, message: &[u8]) -> Result<Vec<u8>, TLSError> {
        let scheme = self.scheme;
        if scheme == SignatureScheme::XMSS1 || scheme == SignatureScheme::XMSS3 || scheme == SignatureScheme::XMSS5 {
            // we a) can't handle state b) don't trust XMSS.
            return Err(TLSError::General("XMSS is not supported as signing algorithm.".to_string()));
        }

        let oqsalg: oqs::sig::Algorithm = include!("generated/sigscheme_to_oqsalg.rs");
        oqs::init();
        let sig: oqs::sig::Sig = oqsalg.try_into().unwrap();

        let sk = sig.secret_key_from_bytes(self.key.as_ref()).unwrap();

        sig.sign(message, sk)
            .map(|sig| sig.into_vec())
            .map_err(|_| TLSError::General("Signing failed".to_string()))
    }

    fn get_scheme(&self) -> SignatureScheme {
        self.scheme
    }
}


struct PQKemKey {
    key: Arc<Vec<u8>>,
    scheme: SignatureScheme,
}

impl PQKemKey {
    fn new(der: &key::PrivateKey, scheme: SignatureScheme) -> Result<Self, ()> {
        use ring::io::der;

        let expected_alg_id = include!("generated/scheme_to_oid.rs");

        let input = untrusted::Input::from(&der.0);
        input.read_all((), |input| {
            der::nested(input, der::Tag::Sequence, (), |input| {
                let version = der::small_nonnegative_integer(input)
                    .map_err(|e| { panic!("{:?}", e) })?;
                assert!(version <= 1);

                let alg_id = der::expect_tag_and_get_value(input, der::Tag::Sequence)
                    .map_err(|_| { panic!("getting oid failed") })?;
                if alg_id.as_slice_less_safe() != expected_alg_id {
                    crate::log::trace!("Alg ID didn't match for {:?}", scheme);
                    return Err(())
                } else {
                    crate::log::trace!("Did match for {:?}", scheme);
                }

                let private_key = der::expect_tag_and_get_value(input, der::Tag::OctetString)
                    .map_err(|e| { panic!("{:?}", e) })?;

                let oqsalg = include!("generated/kemscheme_to_oqsalg.rs");
                oqs::init();
                let oqsalg = oqs::kem::Kem::new(oqsalg).unwrap();
                assert_eq!(private_key.len(), oqsalg.length_secret_key(), "secret key length");

                Ok(private_key.as_slice_less_safe().to_vec())
         })
            .map(|key| PQKemKey{ key: Arc::new(key), scheme })
        })
    }
}

impl SigningKey for PQKemKey {
    fn choose_scheme(&self, offered: &[SignatureScheme]) -> Option<Box<dyn Signer>> {
        if offered.contains(&self.scheme) {
            panic!("why are you trying this.");
        } else {
            None
        }
    }

    fn algorithm(&self) -> SignatureAlgorithm {
        SignatureAlgorithm::KEMTLS
    }

    fn get_bytes(&self) -> &[u8] {
        &self.key
    }
}

struct NikeKey {
    key: Arc<Vec<u8>>,
    scheme: SignatureScheme,
}

#[derive(PartialEq, Clone, Copy)]
/// nike implementations
pub enum NikeImpl {
    /// ctidh512
    CTIDH512,
    /// ctidh1024
    CTIDH1024,
    /// secsidh
    SecSidh(secsidh::Algorithm)
}

impl NikeKey {
    fn new(der: &key::PrivateKey, scheme: SignatureScheme) -> Result<NikeKey, ()> {
        use ring::io::der;

        let expected_alg_id = include!("generated/scheme_to_oid.rs");

        let input = untrusted::Input::from(&der.0);
        input.read_all((), |input| {
            der::nested(input, der::Tag::Sequence, (), |input| {
                let version = der::small_nonnegative_integer(input)
                    .map_err(|e| { panic!("{:?}", e) })?;
                assert!(version <= 1);

                let alg_id = der::expect_tag_and_get_value(input, der::Tag::Sequence)
                    .map_err(|_| { panic!("getting oid failed") })?;
                if alg_id.as_slice_less_safe() != expected_alg_id {
                    crate::log::trace!("Alg ID didn't match for {:?}", scheme);
                    return Err(())
                } else {
                    crate::log::trace!("Did match for {:?}", scheme);
                }

                let private_key = der::expect_tag_and_get_value(input, der::Tag::OctetString)
                    .map_err(|e| { panic!("{:?}", e) })?;

                let csidhalg = include!("generated/nike_to_csidhalg.rs");
                match csidhalg {
                    NikeImpl::SecSidh(alg) => {
                        assert_eq!(private_key.len(), secsidh::length_secret_key(alg).unwrap(), "secret key length");
                    },
                    NikeImpl::CTIDH512 => {
                        assert_eq!(private_key.len(), csidh_rust::ctidh512::PRIVATE_KEY_LEN, "Length of secret key incorrect");
                    }
                    NikeImpl::CTIDH1024 => {
                        assert_eq!(private_key.len(), csidh_rust::ctidh1024::PRIVATE_KEY_LEN, "Length of secret key incorrect");
                    }
                }

                Ok(private_key.as_slice_less_safe().to_vec())
         })
            .map(|key| NikeKey{ key: Arc::new(key), scheme })
        })
    }
}

impl SigningKey for NikeKey {
    fn choose_scheme(&self, offered: &[SignatureScheme]) -> Option<Box<dyn Signer>> {
        if offered.contains(&self.scheme) {
            panic!("why are you trying this.");
        } else {
            None
        }
    }

    fn algorithm(&self) -> SignatureAlgorithm {
        SignatureAlgorithm::NIKE
    }

    fn get_bytes(&self) -> &[u8] {
        &self.key
    }
}

/// The set of schemes we support for signatures and
/// that are allowed for TLS1.3.
pub fn supported_sign_tls13() -> &'static [SignatureScheme] {
    include!("generated/supported_sign_tls13.rs")
    // &[
    //     SignatureScheme::ECDSA_NISTP384_SHA384,
    //     SignatureScheme::ECDSA_NISTP256_SHA256,

    //     SignatureScheme::RSA_PSS_SHA512,
    //     SignatureScheme::RSA_PSS_SHA384,
    //     SignatureScheme::RSA_PSS_SHA256,

    //     SignatureScheme::ED25519,
    // ]
}
