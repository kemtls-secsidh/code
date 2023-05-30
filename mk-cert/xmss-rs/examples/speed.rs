use std::env;
use std::hint::black_box;
use std::time::Instant;

#[cfg(feature = "level1")]
use xmss_rs::level1::{keypair, sign, verify};
#[cfg(feature = "level3")]
use xmss_rs::level3::{keypair, sign, verify};
#[cfg(feature = "level5")]
use xmss_rs::level3::{keypair, sign, verify};

fn main() -> std::io::Result<()> {
    let iterations: u128 = match env::var("ITERATIONS") {
        Ok(val) => val.parse::<u128>().unwrap(),
        Err(_) => 100,
    };

    let name = if cfg!(feature = "level1") {
        "XMSS1"
    } else if cfg!(feature = "level3") {
        "XMSS3"
    } else if cfg!(feature = "level5") {
        "XMSS5"
    } else {
        unreachable!();
    };

    let (pk, mut sk) = keypair();
    let message = [0u8; 64];
    let signature = sign(&mut sk, &message);
    verify(&message, &signature, &pk);

    let keypair_time = {
        let start = Instant::now();
        for _ in 0..iterations {
            let _ = black_box(keypair());
        }
        Instant::now().duration_since(start).as_micros() / iterations
    };

    let signing_time = {
        let start = Instant::now();
        for _ in 0..iterations {
            black_box(sign(&mut sk, &message));
        }
        Instant::now().duration_since(start).as_micros() / iterations
    };
    let verify_time = {
        let start = Instant::now();
        for _ in 0..iterations {
            let _ = black_box(verify(black_box(&message), black_box(&signature), &pk));
        }

        Instant::now().duration_since(start).as_micros() / iterations
    };
    println!(
        "{{ \"name\": \"{}\", \"keypair\": {}, \"sign\": {}, \"verify\": {} }}",
        name, keypair_time, signing_time, verify_time
    );
    Ok(())
}
