use crate::{error, signed_data::AlgorithmIdentifier};

use oqs;

/// Kem struct
pub struct KemAlgorithm {
    /// alg id
    pub(crate) public_key_alg_id: AlgorithmIdentifier,
    /// kem alg
    pub kem: oqs::kem::Algorithm,
}

// impl fmt::Display for KemAlgorithm {
//     fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
//         write!(f, "{:x?}", self.public_key_alg_id)
//     }
// }

/// Decapsulate
///
/// Assumes you have the correct KEM!
pub fn decapsulate(
    alg: &KemAlgorithm, private_key: oqs::kem::SecretKeyRef, ciphertext: untrusted::Input,
) -> Result<Vec<u8>, error::Error> {
    let kem = oqs::kem::Kem::new(alg.kem).expect("algorithm disabled");
    let ciphertext = kem
        .ciphertext_from_bytes(ciphertext.as_slice_less_safe())
        .ok_or(error::Error::KEMFailure)?;
    kem.decapsulate(private_key, ciphertext)
        .map(|ss| ss.into_vec())
        .map_err(|_| error::Error::KEMFailure)
}

/// Encapsulate
pub fn encapsulate(
    alg: &KemAlgorithm, public_key: untrusted::Input,
) -> Result<(oqs::kem::Ciphertext, oqs::kem::SharedSecret), error::Error> {
    let kem = oqs::kem::Kem::new(alg.kem).expect("algorithm disabled");
    let public_key = kem
        .public_key_from_bytes(public_key.as_slice_less_safe())
        .ok_or(error::Error::KEMFailure)?;
    kem.encapsulate(public_key)
        .map_err(|_| error::Error::KEMFailure)
}

/// check if the kem is correct
fn check_key_id(kem: &KemAlgorithm, encoded: untrusted::Input) -> bool {
    kem.public_key_alg_id.matches_algorithm_id_value(encoded)
}

/// convert a key id to a kem
pub fn key_id_to_kem(
    algorithm_id: untrusted::Input,
) -> Result<&'static KemAlgorithm, error::Error> {
    include!("generated/get_kem.rs");

    Err(error::Error::KEMFailure)
}

include!("generated/oqs_kems.rs");
