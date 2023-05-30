use crate::{error, signed_data::AlgorithmIdentifier};
use secsidh;

#[allow(non_camel_case_types)]
#[derive(Clone, Copy, PartialEq)]
/// CTIDH implementations
pub enum CtidhAlg {
    /// ctidh512
    ctidh512,
    /// ctidh1024
    ctidh1024,
}

#[derive(Clone, Copy, PartialEq)]
/// the nike versions
pub enum NikeImpl {
    /// the ctidh_rust impls
    Ctidh(CtidhAlg),
    /// the secsidh impls
    SecSidh(secsidh::Algorithm),
}

/// NIKE struct
pub struct NikeAlgorithm {
    /// alg id
    pub(crate) public_key_alg_id: AlgorithmIdentifier,
    /// SECSIDH alg id
    pub alg: NikeImpl,
}

impl PartialEq for NikeAlgorithm {
    fn eq(&self, other: &Self) -> bool {
        self.alg == other.alg
    }
}

/// Derive a shared secret from a network public key and our secret.
pub fn derive(
    alg: &NikeAlgorithm,
    public_key: untrusted::Input,
    private_key: &[u8],
) -> Result<Vec<u8>, error::Error> {
    match alg.alg {
        NikeImpl::SecSidh(alg) => {
            let pk = secsidh::PublicKey::from_bytes(alg, public_key.as_slice_less_safe())
                .ok_or(error::Error::KEMFailure)?;
            let sk = secsidh::SecretKey::from_bytes(alg, private_key)
                .ok_or(error::Error::KEMFailure)?;
            secsidh::derive(&pk, &sk)
                .ok_or(error::Error::KEMFailure)
        },
        NikeImpl::Ctidh(CtidhAlg::ctidh512) => {
            use csidh_rust::ctidh512::*;
            let pk = PublicKey::from_bytes(public_key.as_slice_less_safe());
            let sk = SecretKey::from_bytes(private_key);
            Ok(agreement(&pk, &sk).to_vec())
        },
        NikeImpl::Ctidh(CtidhAlg::ctidh1024) => {
            use csidh_rust::ctidh1024::*;
            let pk = PublicKey::from_bytes(public_key.as_slice_less_safe());
            let sk = SecretKey::from_bytes(private_key);
            Ok(agreement(&pk, &sk).to_vec())
        }
    }
}

/// check if the nike is correct
fn check_key_id(nike: &NikeAlgorithm, encoded: untrusted::Input) -> bool {
    nike.public_key_alg_id.matches_algorithm_id_value(encoded)
}

/// convert a key id to a nike
pub fn key_id_to_nike(algorithm_id: untrusted::Input) -> Result<&'static NikeAlgorithm, error::Error> {
    include!("generated/get_nike.rs");

    Err(error::Error::KEMFailure)
}

include!("generated/nikes.rs");
