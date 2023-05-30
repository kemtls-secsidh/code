
const CTIDH512_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-ctidh512.der")),
};

/// ctidh512 NIKE
pub static CTIDH512: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CTIDH512_ID,
    alg: NikeImpl::Ctidh(CtidhAlg::ctidh512),
};

const CTIDH1024_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-ctidh1024.der")),
};

/// ctidh1024 NIKE
pub static CTIDH1024: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CTIDH1024_ID,
    alg: NikeImpl::Ctidh(CtidhAlg::ctidh1024),
};

const CSIDH2047M1L226_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CSIDH2047m1l226.der")),
};


/// CSIDH2047m1l226 NIKE
pub static CSIDH2047M1L226: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CSIDH2047M1L226_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CSIDH2047m1l226),
};

const CSIDH4095M27L262_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CSIDH4095m27l262.der")),
};


/// CSIDH4095m27l262 NIKE
pub static CSIDH4095M27L262: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CSIDH4095M27L262_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CSIDH4095m27l262),
};

const CSIDH5119M46L244_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CSIDH5119m46l244.der")),
};


/// CSIDH5119m46l244 NIKE
pub static CSIDH5119M46L244: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CSIDH5119M46L244_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CSIDH5119m46l244),
};

const CSIDH6143M59L262_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CSIDH6143m59l262.der")),
};


/// CSIDH6143m59l262 NIKE
pub static CSIDH6143M59L262: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CSIDH6143M59L262_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CSIDH6143m59l262),
};

const CSIDH8191M78L338_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CSIDH8191m78l338.der")),
};


/// CSIDH8191m78l338 NIKE
pub static CSIDH8191M78L338: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CSIDH8191M78L338_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CSIDH8191m78l338),
};

const CSIDH9215M85L389_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CSIDH9215m85l389.der")),
};


/// CSIDH9215m85l389 NIKE
pub static CSIDH9215M85L389: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CSIDH9215M85L389_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CSIDH9215m85l389),
};

const CTIDH2047M1L226_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CTIDH2047m1l226.der")),
};


/// CTIDH2047m1l226 NIKE
pub static CTIDH2047M1L226: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CTIDH2047M1L226_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CTIDH2047m1l226),
};

const CTIDH4095M27L262_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CTIDH4095m27l262.der")),
};


/// CTIDH4095m27l262 NIKE
pub static CTIDH4095M27L262: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CTIDH4095M27L262_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CTIDH4095m27l262),
};

const CTIDH5119M46L244_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CTIDH5119m46l244.der")),
};


/// CTIDH5119m46l244 NIKE
pub static CTIDH5119M46L244: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CTIDH5119M46L244_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CTIDH5119m46l244),
};

const CTIDH6143M59L262_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CTIDH6143m59l262.der")),
};


/// CTIDH6143m59l262 NIKE
pub static CTIDH6143M59L262: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CTIDH6143M59L262_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CTIDH6143m59l262),
};

const CTIDH8191M78L338_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CTIDH8191m78l338.der")),
};


/// CTIDH8191m78l338 NIKE
pub static CTIDH8191M78L338: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CTIDH8191M78L338_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CTIDH8191m78l338),
};

const CTIDH9215M85L389_ID: AlgorithmIdentifier = AlgorithmIdentifier {
    asn1_id_value: untrusted::Input::from(include_bytes!("../data/alg-CTIDH9215m85l389.der")),
};


/// CTIDH9215m85l389 NIKE
pub static CTIDH9215M85L389: NikeAlgorithm = NikeAlgorithm {
    public_key_alg_id: CTIDH9215M85L389_ID,
    alg: NikeImpl::SecSidh(secsidh::Algorithm::CTIDH9215m85l389),
};
