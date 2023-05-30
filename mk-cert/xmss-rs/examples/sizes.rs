use xmss_rs::*;

fn main() {
    println!(
        "XMSS_L1: |pk|={}, |sk|={}, |sig|={}",
        level1::pk_bytes(),
        level1::sk_bytes(),
        level1::sig_bytes()
    );
    println!(
        "XMSS_L3: |pk|={}, |sk|={}, |sig|={}",
        level3::pk_bytes(),
        level3::sk_bytes(),
        level3::sig_bytes()
    );
    println!(
        "XMSS_L5: |pk|={}, |sk|={}, |sig|={}",
        level5::pk_bytes(),
        level5::sk_bytes(),
        level5::sig_bytes()
    );
}
