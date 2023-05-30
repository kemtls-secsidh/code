use csidhutil::{keygen,derive,name};
use std::time::Instant;
use std::hint::black_box;

fn main() {
    let iterations: u128 = match std::env::var("ITERATIONS") {
        Ok(val) => val.parse::<u128>().unwrap(),
        Err(_) => 1000,
    };

    let (_pk, sk) = keygen();
    let (pk2, _) = keygen();

    let keypair_time = {
        let start = Instant::now();
        for _ in 0..iterations {
            let _ = black_box(keygen());
        }
        Instant::now().duration_since(start).as_micros() / iterations
    };

    let derive_time = {
        let start = Instant::now();
        for _ in 0..iterations {
            black_box(derive(&pk2, black_box(&sk)));
        }
        Instant::now().duration_since(start).as_micros() / iterations
    };

    println!(
        "{{ \"name\": \"{}\", \"keypair\": {}, \"derive\": {} }}",
        name(),
        keypair_time,
        derive_time,
    );
}