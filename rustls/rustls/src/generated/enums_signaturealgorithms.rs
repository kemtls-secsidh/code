
enum_builder! {
    /// The `SignatureAlgorithm` TLS protocol enum.  Values in this enum are taken
    /// from the various RFCs covering TLS, and are listed by IANA.
    /// The `Unknown` item is used when processing unrecognised ordinals.
    @U8
    EnumName: SignatureAlgorithm;
    EnumVal{
        Anonymous => 0x00,
        RSA => 0x01,
        DSA => 0x02,
        ECDSA => 0x03,
        ED25519 => 0x07,
        ED448 => 0x08,
        KEMTLS => 0x0f,
        NIKE => 0x10,
        DILITHIUM2 => 0x11,
        DILITHIUM3 => 0x12,
        DILITHIUM5 => 0x13,
        FALCON512 => 0x14,
        FALCON1024 => 0x15,
        SPHINCSHARAKA128FSIMPLE => 0x16,
        SPHINCSHARAKA128FROBUST => 0x17,
        SPHINCSHARAKA128SSIMPLE => 0x18,
        SPHINCSHARAKA128SROBUST => 0x19,
        SPHINCSHARAKA192FSIMPLE => 0x1a,
        SPHINCSHARAKA192FROBUST => 0x1b,
        SPHINCSHARAKA192SSIMPLE => 0x1c,
        SPHINCSHARAKA192SROBUST => 0x1d,
        SPHINCSHARAKA256FSIMPLE => 0x1e,
        SPHINCSHARAKA256FROBUST => 0x1f,
        SPHINCSHARAKA256SSIMPLE => 0x20,
        SPHINCSHARAKA256SROBUST => 0x21,
        SPHINCSSHA2128FSIMPLE => 0x22,
        SPHINCSSHA2128FROBUST => 0x23,
        SPHINCSSHA2128SSIMPLE => 0x24,
        SPHINCSSHA2128SROBUST => 0x25,
        SPHINCSSHA2192FSIMPLE => 0x26,
        SPHINCSSHA2192FROBUST => 0x27,
        SPHINCSSHA2192SSIMPLE => 0x28,
        SPHINCSSHA2192SROBUST => 0x29,
        SPHINCSSHA2256FSIMPLE => 0x2a,
        SPHINCSSHA2256FROBUST => 0x2b,
        SPHINCSSHA2256SSIMPLE => 0x2c,
        SPHINCSSHA2256SROBUST => 0x2d,
        SPHINCSSHAKE128FSIMPLE => 0x2e,
        SPHINCSSHAKE128FROBUST => 0x2f,
        SPHINCSSHAKE128SSIMPLE => 0x30,
        SPHINCSSHAKE128SROBUST => 0x31,
        SPHINCSSHAKE192FSIMPLE => 0x32,
        SPHINCSSHAKE192FROBUST => 0x33,
        SPHINCSSHAKE192SSIMPLE => 0x34,
        SPHINCSSHAKE192SROBUST => 0x35,
        SPHINCSSHAKE256FSIMPLE => 0x36,
        SPHINCSSHAKE256FROBUST => 0x37,
        SPHINCSSHAKE256SSIMPLE => 0x38,
        SPHINCSSHAKE256SROBUST => 0x39,
        PQOV1616064CLASSIC => 0x3a,
        PQOV25611244CLASSIC => 0x3b,
        PQOV25618472CLASSIC => 0x3c,
        PQOV25624496CLASSIC => 0x3d,
        XMSS1 => 0x3e,
        XMSS3 => 0x3f,
        XMSS5 => 0x40,
    }
}