FROM rustlang/rust:nightly-bullseye

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	qemu-system-misc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cargo --version && qemu-system-riscv64 --version

