match scheme {
    SignatureScheme::KEMTLS_KYBER512 => oqs::kem::Algorithm::Kyber512,
    SignatureScheme::KEMTLS_KYBER768 => oqs::kem::Algorithm::Kyber768,
    SignatureScheme::KEMTLS_KYBER1024 => oqs::kem::Algorithm::Kyber1024,
    SignatureScheme::KEMTLS_CLASSICMCELIECE348864 => oqs::kem::Algorithm::ClassicMcEliece348864,
    SignatureScheme::KEMTLS_CLASSICMCELIECE348864F => oqs::kem::Algorithm::ClassicMcEliece348864f,
    SignatureScheme::KEMTLS_CLASSICMCELIECE460896 => oqs::kem::Algorithm::ClassicMcEliece460896,
    SignatureScheme::KEMTLS_CLASSICMCELIECE460896F => oqs::kem::Algorithm::ClassicMcEliece460896f,
    SignatureScheme::KEMTLS_CLASSICMCELIECE6688128 => oqs::kem::Algorithm::ClassicMcEliece6688128,
    SignatureScheme::KEMTLS_CLASSICMCELIECE6688128F => oqs::kem::Algorithm::ClassicMcEliece6688128f,
    SignatureScheme::KEMTLS_CLASSICMCELIECE6960119 => oqs::kem::Algorithm::ClassicMcEliece6960119,
    SignatureScheme::KEMTLS_CLASSICMCELIECE6960119F => oqs::kem::Algorithm::ClassicMcEliece6960119f,
    SignatureScheme::KEMTLS_CLASSICMCELIECE8192128 => oqs::kem::Algorithm::ClassicMcEliece8192128,
    SignatureScheme::KEMTLS_CLASSICMCELIECE8192128F => oqs::kem::Algorithm::ClassicMcEliece8192128f,
    SignatureScheme::KEMTLS_NTRUPRIMESNTRUP761 => oqs::kem::Algorithm::NtruPrimeSntrup761,
    SignatureScheme::KEMTLS_FRODOKEM640AES => oqs::kem::Algorithm::FrodoKem640Aes,
    SignatureScheme::KEMTLS_FRODOKEM640SHAKE => oqs::kem::Algorithm::FrodoKem640Shake,
    SignatureScheme::KEMTLS_FRODOKEM976AES => oqs::kem::Algorithm::FrodoKem976Aes,
    SignatureScheme::KEMTLS_FRODOKEM976SHAKE => oqs::kem::Algorithm::FrodoKem976Shake,
    SignatureScheme::KEMTLS_FRODOKEM1344AES => oqs::kem::Algorithm::FrodoKem1344Aes,
    SignatureScheme::KEMTLS_FRODOKEM1344SHAKE => oqs::kem::Algorithm::FrodoKem1344Shake,
    SignatureScheme::KEMTLS_SIKEP434 => oqs::kem::Algorithm::SikeP434,
    SignatureScheme::KEMTLS_SIKEP434COMPRESSED => oqs::kem::Algorithm::SikeP434Compressed,
    SignatureScheme::KEMTLS_SIKEP503 => oqs::kem::Algorithm::SikeP503,
    SignatureScheme::KEMTLS_SIKEP503COMPRESSED => oqs::kem::Algorithm::SikeP503Compressed,
    SignatureScheme::KEMTLS_SIKEP610 => oqs::kem::Algorithm::SikeP610,
    SignatureScheme::KEMTLS_SIKEP610COMPRESSED => oqs::kem::Algorithm::SikeP610Compressed,
    SignatureScheme::KEMTLS_SIKEP751 => oqs::kem::Algorithm::SikeP751,
    SignatureScheme::KEMTLS_SIKEP751COMPRESSED => oqs::kem::Algorithm::SikeP751Compressed,
    SignatureScheme::KEMTLS_BIKEL1 => oqs::kem::Algorithm::BikeL1,
    SignatureScheme::KEMTLS_BIKEL3 => oqs::kem::Algorithm::BikeL3,
    SignatureScheme::KEMTLS_HQC128 => oqs::kem::Algorithm::Hqc128,
    SignatureScheme::KEMTLS_HQC192 => oqs::kem::Algorithm::Hqc192,
    SignatureScheme::KEMTLS_HQC256 => oqs::kem::Algorithm::Hqc256,
    _ => unreachable!(),}