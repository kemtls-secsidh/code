#[cfg(feature = "secsidh")]
pub use secsidh::csidh2047m1l226 as csidh;
#[cfg(feature = "csidh-rust")]
pub use csidh_rust::ctidh512 as csidh;