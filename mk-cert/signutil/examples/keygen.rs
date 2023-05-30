use std::fs::File;
use std::io::prelude::*;

use oqs::sig::*;

use signutil::alg;

fn main() -> std::io::Result<()> {
    let sigalg = Sig::new(alg).unwrap();
    let (pk, sk) = sigalg.keypair().unwrap();
    let mut pubfile = File::create("publickey.bin")?;
    let mut secfile = File::create("secretkey.bin")?;
    pubfile.write_all(pk.as_ref())?;
    secfile.write_all(sk.as_ref())?;
    Ok(())
}
