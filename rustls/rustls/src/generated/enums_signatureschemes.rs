
enum_builder! {
    /// The `SignatureScheme` TLS protocol enum.  Values in this enum are taken
    /// from the various RFCs covering TLS, and are listed by IANA.
    /// The `Unknown` item is used when processing unrecognised ordinals.
    @U16
    EnumName: SignatureScheme;
    EnumVal{
        RSA_PKCS1_SHA1 => 0x0201,
        ECDSA_SHA1_Legacy => 0x0203,
        RSA_PKCS1_SHA256 => 0x0401,
        ECDSA_NISTP256_SHA256 => 0x0403,
        RSA_PKCS1_SHA384 => 0x0501,
        ECDSA_NISTP384_SHA384 => 0x0503,
        RSA_PKCS1_SHA512 => 0x0601,
        ECDSA_NISTP521_SHA512 => 0x0603,
        RSA_PSS_SHA256 => 0x0804,
        RSA_PSS_SHA384 => 0x0805,
        RSA_PSS_SHA512 => 0x0806,
        ED25519 => 0x0807,
        ED448 => 0x0808,
        DILITHIUM2 => 0xfe00,
        DILITHIUM3 => 0xfe01,
        DILITHIUM5 => 0xfe02,
        FALCON512 => 0xfe03,
        FALCON1024 => 0xfe04,
        SPHINCSHARAKA128FSIMPLE => 0xfe05,
        SPHINCSHARAKA128FROBUST => 0xfe06,
        SPHINCSHARAKA128SSIMPLE => 0xfe07,
        SPHINCSHARAKA128SROBUST => 0xfe08,
        SPHINCSHARAKA192FSIMPLE => 0xfe09,
        SPHINCSHARAKA192FROBUST => 0xfe0a,
        SPHINCSHARAKA192SSIMPLE => 0xfe0b,
        SPHINCSHARAKA192SROBUST => 0xfe0c,
        SPHINCSHARAKA256FSIMPLE => 0xfe0d,
        SPHINCSHARAKA256FROBUST => 0xfe0e,
        SPHINCSHARAKA256SSIMPLE => 0xfe0f,
        SPHINCSHARAKA256SROBUST => 0xfe10,
        SPHINCSSHA2128FSIMPLE => 0xfe11,
        SPHINCSSHA2128FROBUST => 0xfe12,
        SPHINCSSHA2128SSIMPLE => 0xfe13,
        SPHINCSSHA2128SROBUST => 0xfe14,
        SPHINCSSHA2192FSIMPLE => 0xfe15,
        SPHINCSSHA2192FROBUST => 0xfe16,
        SPHINCSSHA2192SSIMPLE => 0xfe17,
        SPHINCSSHA2192SROBUST => 0xfe18,
        SPHINCSSHA2256FSIMPLE => 0xfe19,
        SPHINCSSHA2256FROBUST => 0xfe1a,
        SPHINCSSHA2256SSIMPLE => 0xfe1b,
        SPHINCSSHA2256SROBUST => 0xfe1c,
        SPHINCSSHAKE128FSIMPLE => 0xfe1d,
        SPHINCSSHAKE128FROBUST => 0xfe1e,
        SPHINCSSHAKE128SSIMPLE => 0xfe1f,
        SPHINCSSHAKE128SROBUST => 0xfe20,
        SPHINCSSHAKE192FSIMPLE => 0xfe21,
        SPHINCSSHAKE192FROBUST => 0xfe22,
        SPHINCSSHAKE192SSIMPLE => 0xfe23,
        SPHINCSSHAKE192SROBUST => 0xfe24,
        SPHINCSSHAKE256FSIMPLE => 0xfe25,
        SPHINCSSHAKE256FROBUST => 0xfe26,
        SPHINCSSHAKE256SSIMPLE => 0xfe27,
        SPHINCSSHAKE256SROBUST => 0xfe28,
        PQOV1616064CLASSIC => 0xfe29,
        PQOV25611244CLASSIC => 0xfe2a,
        PQOV25618472CLASSIC => 0xfe2b,
        PQOV25624496CLASSIC => 0xfe2c,
        XMSS1 => 0xfe2d,
        XMSS3 => 0xfe2e,
        XMSS5 => 0xfe2f,
        KEMTLS_KYBER512 => 0xfe30,
        KEMTLS_KYBER768 => 0xfe31,
        KEMTLS_KYBER1024 => 0xfe32,
        KEMTLS_CLASSICMCELIECE348864 => 0xfe33,
        KEMTLS_CLASSICMCELIECE348864F => 0xfe34,
        KEMTLS_CLASSICMCELIECE460896 => 0xfe35,
        KEMTLS_CLASSICMCELIECE460896F => 0xfe36,
        KEMTLS_CLASSICMCELIECE6688128 => 0xfe37,
        KEMTLS_CLASSICMCELIECE6688128F => 0xfe38,
        KEMTLS_CLASSICMCELIECE6960119 => 0xfe39,
        KEMTLS_CLASSICMCELIECE6960119F => 0xfe3a,
        KEMTLS_CLASSICMCELIECE8192128 => 0xfe3b,
        KEMTLS_CLASSICMCELIECE8192128F => 0xfe3c,
        KEMTLS_NTRUPRIMESNTRUP761 => 0xfe3d,
        KEMTLS_FRODOKEM640AES => 0xfe3e,
        KEMTLS_FRODOKEM640SHAKE => 0xfe3f,
        KEMTLS_FRODOKEM976AES => 0xfe40,
        KEMTLS_FRODOKEM976SHAKE => 0xfe41,
        KEMTLS_FRODOKEM1344AES => 0xfe42,
        KEMTLS_FRODOKEM1344SHAKE => 0xfe43,
        KEMTLS_SIKEP434 => 0xfe44,
        KEMTLS_SIKEP434COMPRESSED => 0xfe45,
        KEMTLS_SIKEP503 => 0xfe46,
        KEMTLS_SIKEP503COMPRESSED => 0xfe47,
        KEMTLS_SIKEP610 => 0xfe48,
        KEMTLS_SIKEP610COMPRESSED => 0xfe49,
        KEMTLS_SIKEP751 => 0xfe4a,
        KEMTLS_SIKEP751COMPRESSED => 0xfe4b,
        KEMTLS_BIKEL1 => 0xfe4c,
        KEMTLS_BIKEL3 => 0xfe4d,
        KEMTLS_HQC128 => 0xfe4e,
        KEMTLS_HQC192 => 0xfe4f,
        KEMTLS_HQC256 => 0xfe50,
        NIKE_CTIDH512 => 0xfe51,
        NIKE_CTIDH1024 => 0xfe52,
        NIKE_CSIDH2047M1L226 => 0xfe53,
        NIKE_CSIDH4095M27L262 => 0xfe54,
        NIKE_CSIDH5119M46L244 => 0xfe55,
        NIKE_CSIDH6143M59L262 => 0xfe56,
        NIKE_CSIDH8191M78L338 => 0xfe57,
        NIKE_CSIDH9215M85L389 => 0xfe58,
        NIKE_CTIDH2047M1L226 => 0xfe59,
        NIKE_CTIDH4095M27L262 => 0xfe5a,
        NIKE_CTIDH5119M46L244 => 0xfe5b,
        NIKE_CTIDH6143M59L262 => 0xfe5c,
        NIKE_CTIDH8191M78L338 => 0xfe5d,
        NIKE_CTIDH9215M85L389 => 0xfe5e,

    }
}