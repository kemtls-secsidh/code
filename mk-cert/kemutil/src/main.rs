use std::fs::File;
use std::io::prelude::*;

mod kem;

#[cfg(feature = "oqs")]
mod doingit {
    use crate::kem::thealgorithm;
    use oqs::kem::*;
    pub fn do_keypair() -> (Vec<u8>, Vec<u8>) {
        let alg = Kem::new(thealgorithm).unwrap();
        let (pk, sk) = alg.keypair().unwrap();
        (pk.into_vec(), sk.into_vec())
    }
}

#[cfg(feature = "csidh")]
mod doingit {
    use crate::kem::thealgorithm;
    pub fn do_keypair() -> (Vec<u8>, Vec<u8>) {
        let (pk, sk) = thealgorithm::keypair();
        (pk.as_ref().to_vec(), sk.as_ref().to_vec())
    }
}

fn main() -> std::io::Result<()> {
    let (pk, sk) = doingit::do_keypair();

    let mut pubkeyfile = File::create("publickey.bin")?;
    let mut seckeyfile = File::create("secretkey.bin")?;

    pubkeyfile.write_all(pk.as_ref())?;
    seckeyfile.write_all(sk.as_ref())?;

    Ok(())
}
