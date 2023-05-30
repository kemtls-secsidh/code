mod instance;

#[cfg(feature = "secsidh")]
pub fn name() -> &'static str {
    instance::csidh::name()
}

#[cfg(feature = "csidh-rust")]
pub fn name() -> &'static str {
    instance::csidh::name()
}

#[cfg(feature = "secsidh")]
pub fn keygen() -> (Vec<u8>, Vec<u8>) {
    let (pk, sk) = crate::instance::csidh::keygen();
    (pk.as_ref().to_vec(), sk.as_ref().to_vec())
}

#[cfg(feature = "csidh-rust")]
pub fn keygen() -> (Vec<u8>, Vec<u8>) {
    let (pk, sk) = crate::instance::csidh::keypair();
    (pk.as_ref().to_vec(), sk.as_ref().to_vec())
}


#[cfg(feature = "csidh-rust")]
pub fn derive(pk: &[u8], sk: &[u8]) -> Vec<u8> {
    let pk = crate::instance::csidh::CSIDHPublicKey::from_bytes(pk);
    let sk = crate::instance::csidh::CSIDHPrivateKey::from_bytes(sk);
    crate::instance::csidh::agreement(&pk, &sk).to_vec()
}

#[cfg(feature = "secsidh")]
pub fn derive(pk: &[u8], sk: &[u8]) -> Vec<u8> {
    let pk = crate::instance::csidh::PublicKey::from_bytes(pk);
    let sk = crate::instance::csidh::SecretKey::from_bytes(sk);
    crate::instance::csidh::derive(&pk, &sk).as_ref().to_vec()
}
