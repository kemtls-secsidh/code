match self.scheme {
    SignatureScheme::DILITHIUM2 => SignatureAlgorithm::DILITHIUM2,
    SignatureScheme::DILITHIUM3 => SignatureAlgorithm::DILITHIUM3,
    SignatureScheme::DILITHIUM5 => SignatureAlgorithm::DILITHIUM5,
    SignatureScheme::FALCON512 => SignatureAlgorithm::FALCON512,
    SignatureScheme::FALCON1024 => SignatureAlgorithm::FALCON1024,
    SignatureScheme::SPHINCSHARAKA128FSIMPLE => SignatureAlgorithm::SPHINCSHARAKA128FSIMPLE,
    SignatureScheme::SPHINCSHARAKA128FROBUST => SignatureAlgorithm::SPHINCSHARAKA128FROBUST,
    SignatureScheme::SPHINCSHARAKA128SSIMPLE => SignatureAlgorithm::SPHINCSHARAKA128SSIMPLE,
    SignatureScheme::SPHINCSHARAKA128SROBUST => SignatureAlgorithm::SPHINCSHARAKA128SROBUST,
    SignatureScheme::SPHINCSHARAKA192FSIMPLE => SignatureAlgorithm::SPHINCSHARAKA192FSIMPLE,
    SignatureScheme::SPHINCSHARAKA192FROBUST => SignatureAlgorithm::SPHINCSHARAKA192FROBUST,
    SignatureScheme::SPHINCSHARAKA192SSIMPLE => SignatureAlgorithm::SPHINCSHARAKA192SSIMPLE,
    SignatureScheme::SPHINCSHARAKA192SROBUST => SignatureAlgorithm::SPHINCSHARAKA192SROBUST,
    SignatureScheme::SPHINCSHARAKA256FSIMPLE => SignatureAlgorithm::SPHINCSHARAKA256FSIMPLE,
    SignatureScheme::SPHINCSHARAKA256FROBUST => SignatureAlgorithm::SPHINCSHARAKA256FROBUST,
    SignatureScheme::SPHINCSHARAKA256SSIMPLE => SignatureAlgorithm::SPHINCSHARAKA256SSIMPLE,
    SignatureScheme::SPHINCSHARAKA256SROBUST => SignatureAlgorithm::SPHINCSHARAKA256SROBUST,
    SignatureScheme::SPHINCSSHA2128FSIMPLE => SignatureAlgorithm::SPHINCSSHA2128FSIMPLE,
    SignatureScheme::SPHINCSSHA2128FROBUST => SignatureAlgorithm::SPHINCSSHA2128FROBUST,
    SignatureScheme::SPHINCSSHA2128SSIMPLE => SignatureAlgorithm::SPHINCSSHA2128SSIMPLE,
    SignatureScheme::SPHINCSSHA2128SROBUST => SignatureAlgorithm::SPHINCSSHA2128SROBUST,
    SignatureScheme::SPHINCSSHA2192FSIMPLE => SignatureAlgorithm::SPHINCSSHA2192FSIMPLE,
    SignatureScheme::SPHINCSSHA2192FROBUST => SignatureAlgorithm::SPHINCSSHA2192FROBUST,
    SignatureScheme::SPHINCSSHA2192SSIMPLE => SignatureAlgorithm::SPHINCSSHA2192SSIMPLE,
    SignatureScheme::SPHINCSSHA2192SROBUST => SignatureAlgorithm::SPHINCSSHA2192SROBUST,
    SignatureScheme::SPHINCSSHA2256FSIMPLE => SignatureAlgorithm::SPHINCSSHA2256FSIMPLE,
    SignatureScheme::SPHINCSSHA2256FROBUST => SignatureAlgorithm::SPHINCSSHA2256FROBUST,
    SignatureScheme::SPHINCSSHA2256SSIMPLE => SignatureAlgorithm::SPHINCSSHA2256SSIMPLE,
    SignatureScheme::SPHINCSSHA2256SROBUST => SignatureAlgorithm::SPHINCSSHA2256SROBUST,
    SignatureScheme::SPHINCSSHAKE128FSIMPLE => SignatureAlgorithm::SPHINCSSHAKE128FSIMPLE,
    SignatureScheme::SPHINCSSHAKE128FROBUST => SignatureAlgorithm::SPHINCSSHAKE128FROBUST,
    SignatureScheme::SPHINCSSHAKE128SSIMPLE => SignatureAlgorithm::SPHINCSSHAKE128SSIMPLE,
    SignatureScheme::SPHINCSSHAKE128SROBUST => SignatureAlgorithm::SPHINCSSHAKE128SROBUST,
    SignatureScheme::SPHINCSSHAKE192FSIMPLE => SignatureAlgorithm::SPHINCSSHAKE192FSIMPLE,
    SignatureScheme::SPHINCSSHAKE192FROBUST => SignatureAlgorithm::SPHINCSSHAKE192FROBUST,
    SignatureScheme::SPHINCSSHAKE192SSIMPLE => SignatureAlgorithm::SPHINCSSHAKE192SSIMPLE,
    SignatureScheme::SPHINCSSHAKE192SROBUST => SignatureAlgorithm::SPHINCSSHAKE192SROBUST,
    SignatureScheme::SPHINCSSHAKE256FSIMPLE => SignatureAlgorithm::SPHINCSSHAKE256FSIMPLE,
    SignatureScheme::SPHINCSSHAKE256FROBUST => SignatureAlgorithm::SPHINCSSHAKE256FROBUST,
    SignatureScheme::SPHINCSSHAKE256SSIMPLE => SignatureAlgorithm::SPHINCSSHAKE256SSIMPLE,
    SignatureScheme::SPHINCSSHAKE256SROBUST => SignatureAlgorithm::SPHINCSSHAKE256SROBUST,
    SignatureScheme::PQOV1616064CLASSIC => SignatureAlgorithm::PQOV1616064CLASSIC,
    SignatureScheme::PQOV25611244CLASSIC => SignatureAlgorithm::PQOV25611244CLASSIC,
    SignatureScheme::PQOV25618472CLASSIC => SignatureAlgorithm::PQOV25618472CLASSIC,
    SignatureScheme::PQOV25624496CLASSIC => SignatureAlgorithm::PQOV25624496CLASSIC,
    SignatureScheme::XMSS1 => SignatureAlgorithm::XMSS1,
    SignatureScheme::XMSS3 => SignatureAlgorithm::XMSS3,
    SignatureScheme::XMSS5 => SignatureAlgorithm::XMSS5,
    _ => unreachable!(),}