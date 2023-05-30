
const DILITHIUM2_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-dilithium2.der")),
};

/// dilithium2 signatures
pub static DILITHIUM2: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: DILITHIUM2_ID,
    signature_alg_id: DILITHIUM2_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Dilithium2),
};

const DILITHIUM3_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-dilithium3.der")),
};

/// dilithium3 signatures
pub static DILITHIUM3: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: DILITHIUM3_ID,
    signature_alg_id: DILITHIUM3_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Dilithium3),
};

const DILITHIUM5_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-dilithium5.der")),
};

/// dilithium5 signatures
pub static DILITHIUM5: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: DILITHIUM5_ID,
    signature_alg_id: DILITHIUM5_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Dilithium5),
};

const FALCON512_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-falcon512.der")),
};

/// falcon512 signatures
pub static FALCON512: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: FALCON512_ID,
    signature_alg_id: FALCON512_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Falcon512),
};

const FALCON1024_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-falcon1024.der")),
};

/// falcon1024 signatures
pub static FALCON1024: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: FALCON1024_ID,
    signature_alg_id: FALCON1024_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Falcon1024),
};

const SPHINCSHARAKA128FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka128fsimple.der")),
};

/// sphincsharaka128fsimple signatures
pub static SPHINCSHARAKA128FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA128FSIMPLE_ID,
    signature_alg_id: SPHINCSHARAKA128FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka128fSimple),
};

const SPHINCSHARAKA128FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka128frobust.der")),
};

/// sphincsharaka128frobust signatures
pub static SPHINCSHARAKA128FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA128FROBUST_ID,
    signature_alg_id: SPHINCSHARAKA128FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka128fRobust),
};

const SPHINCSHARAKA128SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka128ssimple.der")),
};

/// sphincsharaka128ssimple signatures
pub static SPHINCSHARAKA128SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA128SSIMPLE_ID,
    signature_alg_id: SPHINCSHARAKA128SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka128sSimple),
};

const SPHINCSHARAKA128SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka128srobust.der")),
};

/// sphincsharaka128srobust signatures
pub static SPHINCSHARAKA128SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA128SROBUST_ID,
    signature_alg_id: SPHINCSHARAKA128SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka128sRobust),
};

const SPHINCSHARAKA192FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka192fsimple.der")),
};

/// sphincsharaka192fsimple signatures
pub static SPHINCSHARAKA192FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA192FSIMPLE_ID,
    signature_alg_id: SPHINCSHARAKA192FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka192fSimple),
};

const SPHINCSHARAKA192FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka192frobust.der")),
};

/// sphincsharaka192frobust signatures
pub static SPHINCSHARAKA192FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA192FROBUST_ID,
    signature_alg_id: SPHINCSHARAKA192FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka192fRobust),
};

const SPHINCSHARAKA192SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka192ssimple.der")),
};

/// sphincsharaka192ssimple signatures
pub static SPHINCSHARAKA192SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA192SSIMPLE_ID,
    signature_alg_id: SPHINCSHARAKA192SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka192sSimple),
};

const SPHINCSHARAKA192SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka192srobust.der")),
};

/// sphincsharaka192srobust signatures
pub static SPHINCSHARAKA192SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA192SROBUST_ID,
    signature_alg_id: SPHINCSHARAKA192SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka192sRobust),
};

const SPHINCSHARAKA256FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka256fsimple.der")),
};

/// sphincsharaka256fsimple signatures
pub static SPHINCSHARAKA256FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA256FSIMPLE_ID,
    signature_alg_id: SPHINCSHARAKA256FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka256fSimple),
};

const SPHINCSHARAKA256FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka256frobust.der")),
};

/// sphincsharaka256frobust signatures
pub static SPHINCSHARAKA256FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA256FROBUST_ID,
    signature_alg_id: SPHINCSHARAKA256FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka256fRobust),
};

const SPHINCSHARAKA256SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka256ssimple.der")),
};

/// sphincsharaka256ssimple signatures
pub static SPHINCSHARAKA256SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA256SSIMPLE_ID,
    signature_alg_id: SPHINCSHARAKA256SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka256sSimple),
};

const SPHINCSHARAKA256SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsharaka256srobust.der")),
};

/// sphincsharaka256srobust signatures
pub static SPHINCSHARAKA256SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSHARAKA256SROBUST_ID,
    signature_alg_id: SPHINCSHARAKA256SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsHaraka256sRobust),
};

const SPHINCSSHA2128FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2128fsimple.der")),
};

/// sphincssha2128fsimple signatures
pub static SPHINCSSHA2128FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2128FSIMPLE_ID,
    signature_alg_id: SPHINCSSHA2128FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2128fSimple),
};

const SPHINCSSHA2128FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2128frobust.der")),
};

/// sphincssha2128frobust signatures
pub static SPHINCSSHA2128FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2128FROBUST_ID,
    signature_alg_id: SPHINCSSHA2128FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2128fRobust),
};

const SPHINCSSHA2128SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2128ssimple.der")),
};

/// sphincssha2128ssimple signatures
pub static SPHINCSSHA2128SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2128SSIMPLE_ID,
    signature_alg_id: SPHINCSSHA2128SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2128sSimple),
};

const SPHINCSSHA2128SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2128srobust.der")),
};

/// sphincssha2128srobust signatures
pub static SPHINCSSHA2128SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2128SROBUST_ID,
    signature_alg_id: SPHINCSSHA2128SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2128sRobust),
};

const SPHINCSSHA2192FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2192fsimple.der")),
};

/// sphincssha2192fsimple signatures
pub static SPHINCSSHA2192FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2192FSIMPLE_ID,
    signature_alg_id: SPHINCSSHA2192FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2192fSimple),
};

const SPHINCSSHA2192FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2192frobust.der")),
};

/// sphincssha2192frobust signatures
pub static SPHINCSSHA2192FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2192FROBUST_ID,
    signature_alg_id: SPHINCSSHA2192FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2192fRobust),
};

const SPHINCSSHA2192SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2192ssimple.der")),
};

/// sphincssha2192ssimple signatures
pub static SPHINCSSHA2192SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2192SSIMPLE_ID,
    signature_alg_id: SPHINCSSHA2192SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2192sSimple),
};

const SPHINCSSHA2192SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2192srobust.der")),
};

/// sphincssha2192srobust signatures
pub static SPHINCSSHA2192SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2192SROBUST_ID,
    signature_alg_id: SPHINCSSHA2192SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2192sRobust),
};

const SPHINCSSHA2256FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2256fsimple.der")),
};

/// sphincssha2256fsimple signatures
pub static SPHINCSSHA2256FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2256FSIMPLE_ID,
    signature_alg_id: SPHINCSSHA2256FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2256fSimple),
};

const SPHINCSSHA2256FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2256frobust.der")),
};

/// sphincssha2256frobust signatures
pub static SPHINCSSHA2256FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2256FROBUST_ID,
    signature_alg_id: SPHINCSSHA2256FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2256fRobust),
};

const SPHINCSSHA2256SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2256ssimple.der")),
};

/// sphincssha2256ssimple signatures
pub static SPHINCSSHA2256SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2256SSIMPLE_ID,
    signature_alg_id: SPHINCSSHA2256SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2256sSimple),
};

const SPHINCSSHA2256SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincssha2256srobust.der")),
};

/// sphincssha2256srobust signatures
pub static SPHINCSSHA2256SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHA2256SROBUST_ID,
    signature_alg_id: SPHINCSSHA2256SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsSha2256sRobust),
};

const SPHINCSSHAKE128FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake128fsimple.der")),
};

/// sphincsshake128fsimple signatures
pub static SPHINCSSHAKE128FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE128FSIMPLE_ID,
    signature_alg_id: SPHINCSSHAKE128FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake128fSimple),
};

const SPHINCSSHAKE128FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake128frobust.der")),
};

/// sphincsshake128frobust signatures
pub static SPHINCSSHAKE128FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE128FROBUST_ID,
    signature_alg_id: SPHINCSSHAKE128FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake128fRobust),
};

const SPHINCSSHAKE128SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake128ssimple.der")),
};

/// sphincsshake128ssimple signatures
pub static SPHINCSSHAKE128SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE128SSIMPLE_ID,
    signature_alg_id: SPHINCSSHAKE128SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake128sSimple),
};

const SPHINCSSHAKE128SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake128srobust.der")),
};

/// sphincsshake128srobust signatures
pub static SPHINCSSHAKE128SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE128SROBUST_ID,
    signature_alg_id: SPHINCSSHAKE128SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake128sRobust),
};

const SPHINCSSHAKE192FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake192fsimple.der")),
};

/// sphincsshake192fsimple signatures
pub static SPHINCSSHAKE192FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE192FSIMPLE_ID,
    signature_alg_id: SPHINCSSHAKE192FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake192fSimple),
};

const SPHINCSSHAKE192FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake192frobust.der")),
};

/// sphincsshake192frobust signatures
pub static SPHINCSSHAKE192FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE192FROBUST_ID,
    signature_alg_id: SPHINCSSHAKE192FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake192fRobust),
};

const SPHINCSSHAKE192SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake192ssimple.der")),
};

/// sphincsshake192ssimple signatures
pub static SPHINCSSHAKE192SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE192SSIMPLE_ID,
    signature_alg_id: SPHINCSSHAKE192SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake192sSimple),
};

const SPHINCSSHAKE192SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake192srobust.der")),
};

/// sphincsshake192srobust signatures
pub static SPHINCSSHAKE192SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE192SROBUST_ID,
    signature_alg_id: SPHINCSSHAKE192SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake192sRobust),
};

const SPHINCSSHAKE256FSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake256fsimple.der")),
};

/// sphincsshake256fsimple signatures
pub static SPHINCSSHAKE256FSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE256FSIMPLE_ID,
    signature_alg_id: SPHINCSSHAKE256FSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake256fSimple),
};

const SPHINCSSHAKE256FROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake256frobust.der")),
};

/// sphincsshake256frobust signatures
pub static SPHINCSSHAKE256FROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE256FROBUST_ID,
    signature_alg_id: SPHINCSSHAKE256FROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake256fRobust),
};

const SPHINCSSHAKE256SSIMPLE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake256ssimple.der")),
};

/// sphincsshake256ssimple signatures
pub static SPHINCSSHAKE256SSIMPLE: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE256SSIMPLE_ID,
    signature_alg_id: SPHINCSSHAKE256SSIMPLE_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake256sSimple),
};

const SPHINCSSHAKE256SROBUST_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sphincsshake256srobust.der")),
};

/// sphincsshake256srobust signatures
pub static SPHINCSSHAKE256SROBUST: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: SPHINCSSHAKE256SROBUST_ID,
    signature_alg_id: SPHINCSSHAKE256SROBUST_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::SphincsShake256sRobust),
};

const PQOV1616064CLASSIC_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-pqov1616064classic.der")),
};

/// pqov1616064classic signatures
pub static PQOV1616064CLASSIC: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: PQOV1616064CLASSIC_ID,
    signature_alg_id: PQOV1616064CLASSIC_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Pqov1616064Classic),
};

const PQOV25611244CLASSIC_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-pqov25611244classic.der")),
};

/// pqov25611244classic signatures
pub static PQOV25611244CLASSIC: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: PQOV25611244CLASSIC_ID,
    signature_alg_id: PQOV25611244CLASSIC_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Pqov25611244Classic),
};

const PQOV25618472CLASSIC_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-pqov25618472classic.der")),
};

/// pqov25618472classic signatures
pub static PQOV25618472CLASSIC: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: PQOV25618472CLASSIC_ID,
    signature_alg_id: PQOV25618472CLASSIC_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Pqov25618472Classic),
};

const PQOV25624496CLASSIC_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-pqov25624496classic.der")),
};

/// pqov25624496classic signatures
pub static PQOV25624496CLASSIC: SignatureAlgorithm = SignatureAlgorithm {
    public_key_alg_id: PQOV25624496CLASSIC_ID,
    signature_alg_id: PQOV25624496CLASSIC_ID,
    verification_alg: VerificationAlgorithm::Oqs(&oqs::sig::Algorithm::Pqov25624496Classic),
};
