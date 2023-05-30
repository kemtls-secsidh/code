use std::fs;

use oqs::sig::*;

use signutil::alg;

fn parseargs() -> (String, String, String) {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 4 {
        panic!("Usage: {} pk msg sig", args[0]);
    }
    (args[1].clone(), args[2].clone(), args[3].clone())
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let (pk_filename, in_filename, sig_filename) = parseargs();
    let sigalg = Sig::new(alg).unwrap();
    let pk = &fs::read(pk_filename)?;
    let pk = sigalg.public_key_from_bytes(pk).unwrap();
    let msg = &fs::read(in_filename)?;
    let sig = &fs::read(sig_filename)?;
    let sig = sigalg.signature_from_bytes(sig).unwrap();

    if let Ok(()) = sigalg.verify(msg, &sig, &pk) {
        println!("Verification success!");
    } else {
        println!("Verification failed!");
    }

    Ok(())
}
