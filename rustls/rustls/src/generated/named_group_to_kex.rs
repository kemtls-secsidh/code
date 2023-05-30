match group {

        NamedGroup::Kyber512 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::Kyber768 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::Kyber1024 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece348864 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece348864f => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece460896 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece460896f => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece6688128 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece6688128f => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece6960119 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece6960119f => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece8192128 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::ClassicMcEliece8192128f => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::NtruPrimeSntrup761 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::FrodoKem640Aes => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::FrodoKem640Shake => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::FrodoKem976Aes => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::FrodoKem976Shake => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::FrodoKem1344Aes => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::FrodoKem1344Shake => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::SikeP434 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::SikeP434Compressed => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::SikeP503 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::SikeP503Compressed => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::SikeP610 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::SikeP610Compressed => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::SikeP751 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::SikeP751Compressed => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::BikeL1 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::BikeL3 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::Hqc128 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::Hqc192 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::Hqc256 => {
            oqs::init();
            let kem = oqs::kem::Kem::new(oqs::kem::Algorithm::Kyber512).unwrap();
            Some(KexAlgorithm::KEM(kem))
        },

        NamedGroup::CTIDH512 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::CTIDH512))
        },

        NamedGroup::CTIDH1024 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::CTIDH1024))
        },

        NamedGroup::CSIDH2047M1L226 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CSIDH2047m1l226)))
            },

        NamedGroup::CSIDH4095M27L262 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CSIDH4095m27l262)))
            },

        NamedGroup::CSIDH5119M46L244 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CSIDH5119m46l244)))
            },

        NamedGroup::CSIDH6143M59L262 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CSIDH6143m59l262)))
            },

        NamedGroup::CSIDH8191M78L338 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CSIDH8191m78l338)))
            },

        NamedGroup::CSIDH9215M85L389 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CSIDH9215m85l389)))
            },

        NamedGroup::CTIDH2047M1L226 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CTIDH2047m1l226)))
            },

        NamedGroup::CTIDH4095M27L262 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CTIDH4095m27l262)))
            },

        NamedGroup::CTIDH5119M46L244 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CTIDH5119m46l244)))
            },

        NamedGroup::CTIDH6143M59L262 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CTIDH6143m59l262)))
            },

        NamedGroup::CTIDH8191M78L338 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CTIDH8191m78l338)))
            },

        NamedGroup::CTIDH9215M85L389 => {
            Some(KexAlgorithm::CSIDH(NikeImpl::SecSidh(secsidh::Algorithm::CTIDH9215m85l389)))
            },
_ => None,
}