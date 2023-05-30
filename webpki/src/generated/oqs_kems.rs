
const KYBER512_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-kyber512.der")),
};

/// kyber512 KEM
pub static KYBER512: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: KYBER512_ID,
    kem: oqs::kem::Algorithm::Kyber512,
};

const KYBER768_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-kyber768.der")),
};

/// kyber768 KEM
pub static KYBER768: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: KYBER768_ID,
    kem: oqs::kem::Algorithm::Kyber768,
};

const KYBER1024_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-kyber1024.der")),
};

/// kyber1024 KEM
pub static KYBER1024: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: KYBER1024_ID,
    kem: oqs::kem::Algorithm::Kyber1024,
};

const CLASSICMCELIECE348864_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece348864.der")),
};

/// classicmceliece348864 KEM
pub static CLASSICMCELIECE348864: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE348864_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece348864,
};

const CLASSICMCELIECE348864F_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece348864f.der")),
};

/// classicmceliece348864f KEM
pub static CLASSICMCELIECE348864F: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE348864F_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece348864f,
};

const CLASSICMCELIECE460896_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece460896.der")),
};

/// classicmceliece460896 KEM
pub static CLASSICMCELIECE460896: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE460896_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece460896,
};

const CLASSICMCELIECE460896F_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece460896f.der")),
};

/// classicmceliece460896f KEM
pub static CLASSICMCELIECE460896F: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE460896F_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece460896f,
};

const CLASSICMCELIECE6688128_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece6688128.der")),
};

/// classicmceliece6688128 KEM
pub static CLASSICMCELIECE6688128: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE6688128_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece6688128,
};

const CLASSICMCELIECE6688128F_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece6688128f.der")),
};

/// classicmceliece6688128f KEM
pub static CLASSICMCELIECE6688128F: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE6688128F_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece6688128f,
};

const CLASSICMCELIECE6960119_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece6960119.der")),
};

/// classicmceliece6960119 KEM
pub static CLASSICMCELIECE6960119: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE6960119_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece6960119,
};

const CLASSICMCELIECE6960119F_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece6960119f.der")),
};

/// classicmceliece6960119f KEM
pub static CLASSICMCELIECE6960119F: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE6960119F_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece6960119f,
};

const CLASSICMCELIECE8192128_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece8192128.der")),
};

/// classicmceliece8192128 KEM
pub static CLASSICMCELIECE8192128: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE8192128_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece8192128,
};

const CLASSICMCELIECE8192128F_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-classicmceliece8192128f.der")),
};

/// classicmceliece8192128f KEM
pub static CLASSICMCELIECE8192128F: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: CLASSICMCELIECE8192128F_ID,
    kem: oqs::kem::Algorithm::ClassicMcEliece8192128f,
};

const NTRUPRIMESNTRUP761_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-ntruprimesntrup761.der")),
};

/// ntruprimesntrup761 KEM
pub static NTRUPRIMESNTRUP761: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: NTRUPRIMESNTRUP761_ID,
    kem: oqs::kem::Algorithm::NtruPrimeSntrup761,
};

const FRODOKEM640AES_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-frodokem640aes.der")),
};

/// frodokem640aes KEM
pub static FRODOKEM640AES: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: FRODOKEM640AES_ID,
    kem: oqs::kem::Algorithm::FrodoKem640Aes,
};

const FRODOKEM640SHAKE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-frodokem640shake.der")),
};

/// frodokem640shake KEM
pub static FRODOKEM640SHAKE: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: FRODOKEM640SHAKE_ID,
    kem: oqs::kem::Algorithm::FrodoKem640Shake,
};

const FRODOKEM976AES_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-frodokem976aes.der")),
};

/// frodokem976aes KEM
pub static FRODOKEM976AES: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: FRODOKEM976AES_ID,
    kem: oqs::kem::Algorithm::FrodoKem976Aes,
};

const FRODOKEM976SHAKE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-frodokem976shake.der")),
};

/// frodokem976shake KEM
pub static FRODOKEM976SHAKE: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: FRODOKEM976SHAKE_ID,
    kem: oqs::kem::Algorithm::FrodoKem976Shake,
};

const FRODOKEM1344AES_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-frodokem1344aes.der")),
};

/// frodokem1344aes KEM
pub static FRODOKEM1344AES: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: FRODOKEM1344AES_ID,
    kem: oqs::kem::Algorithm::FrodoKem1344Aes,
};

const FRODOKEM1344SHAKE_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-frodokem1344shake.der")),
};

/// frodokem1344shake KEM
pub static FRODOKEM1344SHAKE: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: FRODOKEM1344SHAKE_ID,
    kem: oqs::kem::Algorithm::FrodoKem1344Shake,
};

const SIKEP434_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sikep434.der")),
};

/// sikep434 KEM
pub static SIKEP434: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: SIKEP434_ID,
    kem: oqs::kem::Algorithm::SikeP434,
};

const SIKEP434COMPRESSED_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sikep434compressed.der")),
};

/// sikep434compressed KEM
pub static SIKEP434COMPRESSED: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: SIKEP434COMPRESSED_ID,
    kem: oqs::kem::Algorithm::SikeP434Compressed,
};

const SIKEP503_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sikep503.der")),
};

/// sikep503 KEM
pub static SIKEP503: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: SIKEP503_ID,
    kem: oqs::kem::Algorithm::SikeP503,
};

const SIKEP503COMPRESSED_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sikep503compressed.der")),
};

/// sikep503compressed KEM
pub static SIKEP503COMPRESSED: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: SIKEP503COMPRESSED_ID,
    kem: oqs::kem::Algorithm::SikeP503Compressed,
};

const SIKEP610_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sikep610.der")),
};

/// sikep610 KEM
pub static SIKEP610: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: SIKEP610_ID,
    kem: oqs::kem::Algorithm::SikeP610,
};

const SIKEP610COMPRESSED_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sikep610compressed.der")),
};

/// sikep610compressed KEM
pub static SIKEP610COMPRESSED: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: SIKEP610COMPRESSED_ID,
    kem: oqs::kem::Algorithm::SikeP610Compressed,
};

const SIKEP751_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sikep751.der")),
};

/// sikep751 KEM
pub static SIKEP751: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: SIKEP751_ID,
    kem: oqs::kem::Algorithm::SikeP751,
};

const SIKEP751COMPRESSED_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-sikep751compressed.der")),
};

/// sikep751compressed KEM
pub static SIKEP751COMPRESSED: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: SIKEP751COMPRESSED_ID,
    kem: oqs::kem::Algorithm::SikeP751Compressed,
};

const BIKEL1_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-bikel1.der")),
};

/// bikel1 KEM
pub static BIKEL1: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: BIKEL1_ID,
    kem: oqs::kem::Algorithm::BikeL1,
};

const BIKEL3_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-bikel3.der")),
};

/// bikel3 KEM
pub static BIKEL3: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: BIKEL3_ID,
    kem: oqs::kem::Algorithm::BikeL3,
};

const HQC128_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-hqc128.der")),
};

/// hqc128 KEM
pub static HQC128: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: HQC128_ID,
    kem: oqs::kem::Algorithm::Hqc128,
};

const HQC192_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-hqc192.der")),
};

/// hqc192 KEM
pub static HQC192: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: HQC192_ID,
    kem: oqs::kem::Algorithm::Hqc192,
};

const HQC256_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-hqc256.der")),
};

/// hqc256 KEM
pub static HQC256: KemAlgorithm = KemAlgorithm {
    public_key_alg_id: HQC256_ID,
    kem: oqs::kem::Algorithm::Hqc256,
};
