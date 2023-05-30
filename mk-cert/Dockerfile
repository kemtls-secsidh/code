# Author: Thom Wiggers <thom@thomwiggers.nl>
# LICENSE: CC0
#
# Builds and runs the speed benchmarks in the same environment as the experiments
#
FROM rust:1.66-bullseye AS builder

SHELL ["/bin/bash", "-c"]

ADD https://apt.llvm.org/llvm-snapshot.gpg.key /llvm.key
RUN apt-key add /llvm.key

# Install requirements
RUN echo "deb http://apt.llvm.org/bullseye/ llvm-toolchain-bullseye-12 main" > /etc/apt/sources.list.d/llvm.list
RUN apt-get update  -qq
RUN apt-get install -qq -y pipenv libssl-dev cmake clang-12 llvm-12

# Default C compiler
# XXX: Somehow clang breaks.
ENV CC=gcc

# Rust options
ENV RUSTFLAGS "-C target-cpu=native -C link-arg=-s"
ENV RUST_MIN_STACK "20971520"

# Add source codes
COPY signutil /usr/src/signutil
# populate cargo build caches
WORKDIR /usr/src/signutil
RUN echo "pub use oqs::sig::Algorithm::Dilithium2 as alg;" > src/lib.rs
RUN cargo update
RUN cargo build --release --examples

# Add source code
COPY kemutil /usr/src/kemutil
# populate cargo build caches
WORKDIR /usr/src/kemutil
RUN echo "pub use oqs::kem::Algorithm::Kyber512 as thealgorithm;" > src/kem.rs

RUN cargo update
RUN cargo build --features oqs --release --examples

# Add source code
COPY xmss-rs /usr/src/xmss-rs
WORKDIR /usr/src/xmss-rs
RUN cargo update
run cargo build --release

# # Add source code
COPY csidhutil /usr/src/csidhutil
# populate cargo build caches
WORKDIR /usr/src/csidhutil
RUN echo "pub use csidh_rust::ctidh512 as csidh;" > src/instance.rs
RUN cargo update
RUN cargo build --release --features csidh-rust --example speed

WORKDIR /usr/src
# Set up script
COPY benchmark_entrypoint.sh /usr/src/entrypoint.sh
ENTRYPOINT ["/usr/src/entrypoint.sh"]
