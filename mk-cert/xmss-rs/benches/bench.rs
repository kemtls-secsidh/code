#![feature(test)]
extern crate test;

#[macro_use]
extern crate lazy_static;

use test::Bencher;

macro_rules! benchmark {
    ($level: ident) => {
        mod $level {
            use super::*;

            use xmss_rs::$level::{keypair, sign, verify};

            #[ignore]
            #[bench]
            fn bench_keypair(b: &mut Bencher) {
                b.iter(|| keypair());
            }

            lazy_static! {
                static ref KEYPAIR: (Vec<u8>, Vec<u8>) = keypair();
            }

            #[bench]
            fn bench_sign(b: &mut Bencher) {
                let msg = [0u8; 100];
                let (_pk, mut sk) = KEYPAIR.clone();
                b.iter(|| sign(&mut sk, &msg));
            }

            #[bench]
            fn bench_verify(b: &mut Bencher) {
                let msg = [0u8; 100];
                let (pk, mut sk) = KEYPAIR.clone();
                let sig = sign(&mut sk, &msg);
                b.iter(|| verify(&msg, &sig, &pk));
            }
        }
    };
}

benchmark!(level1);
benchmark!(level3);
benchmark!(level5);