use kemutil::thealgorithm;
use oqs::kem::*;
use std::hint::black_box;
use std::time::Instant;
use std::env;


fn main() {
    let iterations: u128 = match env::var("ITERATIONS") {
        Ok(val) => val.parse::<u128>().unwrap(),
        Err(_) => 1000,
    };

    let kemalg = Kem::new(thealgorithm).unwrap();
    let (pk, sk) = kemalg.keypair().unwrap();
    let (ct, _ss) = kemalg.encapsulate(&pk).unwrap();

    let keypair_time = {
        let start = Instant::now();
        for _ in 0..iterations {
            let _ = black_box(kemalg.keypair());
        }
        Instant::now().duration_since(start).as_micros() / iterations
    };

    let encapsulate_time = {
        let start = Instant::now();
        for _ in 0..iterations {
            black_box(kemalg.encapsulate(black_box(&pk)).unwrap());
        }
        Instant::now().duration_since(start).as_micros() / iterations
    };

    let decapsulate_time = {
        let start = Instant::now();
        for _ in 0..iterations {
            black_box(kemalg.decapsulate(black_box(&sk), &ct).unwrap());
        }
        Instant::now().duration_since(start).as_micros() / iterations
    };

    println!(
        "{{ \"name\": \"{}\", \"keypair\": {}, \"encapsulate\": {}, \"decapsulate\": {} }}",
        thealgorithm.name(),
        keypair_time,
        encapsulate_time,
        decapsulate_time,
    );
}
