use std::fs::{self, File};
use std::io::prelude::*;

use oqs::sig::*;

use signutil::alg;

fn parseargs() -> (String, String, String) {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 4 {
        panic!("Usage: {} sk in out", args[0]);
    }
    (args[1].clone(), args[2].clone(), args[3].clone())
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let (sk_filename, in_filename, sig_filename) = parseargs();
    let mut sigfile = File::create(sig_filename)?;

    let sigalg = Sig::new(alg).unwrap();
    let sk_content = &fs::read(sk_filename)?;
    let sk = sigalg.secret_key_from_bytes(&sk_content).unwrap();
    let signature = sigalg.sign(&fs::read(in_filename)?, &sk).unwrap();

    sigfile.write_all(signature.as_ref())?;

    Ok(())
}
