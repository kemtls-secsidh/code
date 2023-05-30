use std::fs::File;
use std::io::prelude::*;

#[cfg(feature = "level1")]
use xmss_rs::level1::keypair;
#[cfg(feature = "level3")]
use xmss_rs::level3::keypair;
#[cfg(feature = "level5")]
use xmss_rs::level5::keypair;

fn main() -> std::io::Result<()> {
    let (pk, sk) = keypair();
    let mut pubfile = File::create("publickey.bin")?;
    let mut secfile = File::create("secretkey.bin")?;
    pubfile.write_all(pk.as_ref())?;
    secfile.write_all(sk.as_ref())?;
    Ok(())
}
