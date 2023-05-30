match (named_group, sigalg) {
	(NamedGroup::CTIDH512, SignatureScheme::NIKE_CTIDH512) => true,
	(NamedGroup::CTIDH1024, SignatureScheme::NIKE_CTIDH1024) => true,
	(NamedGroup::CSIDH2047M1L226, SignatureScheme::NIKE_CSIDH2047M1L226) => true,
	(NamedGroup::CSIDH4095M27L262, SignatureScheme::NIKE_CSIDH4095M27L262) => true,
	(NamedGroup::CSIDH5119M46L244, SignatureScheme::NIKE_CSIDH5119M46L244) => true,
	(NamedGroup::CSIDH6143M59L262, SignatureScheme::NIKE_CSIDH6143M59L262) => true,
	(NamedGroup::CSIDH8191M78L338, SignatureScheme::NIKE_CSIDH8191M78L338) => true,
	(NamedGroup::CSIDH9215M85L389, SignatureScheme::NIKE_CSIDH9215M85L389) => true,
	(NamedGroup::CTIDH2047M1L226, SignatureScheme::NIKE_CTIDH2047M1L226) => true,
	(NamedGroup::CTIDH4095M27L262, SignatureScheme::NIKE_CTIDH4095M27L262) => true,
	(NamedGroup::CTIDH5119M46L244, SignatureScheme::NIKE_CTIDH5119M46L244) => true,
	(NamedGroup::CTIDH6143M59L262, SignatureScheme::NIKE_CTIDH6143M59L262) => true,
	(NamedGroup::CTIDH8191M78L338, SignatureScheme::NIKE_CTIDH8191M78L338) => true,
	(NamedGroup::CTIDH9215M85L389, SignatureScheme::NIKE_CTIDH9215M85L389) => true,
	(_, _) => false,}