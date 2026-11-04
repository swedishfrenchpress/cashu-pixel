# The build environment: Rust plus the libraries Slint links against, for arm64,
# the Pi Zero 2 W's architecture. Native on Apple silicon, emulated elsewhere.
# It holds no source; the repo is mounted in at run time (see README.md).
FROM --platform=linux/arm64 rust:1.94-bookworm

RUN apt-get update && apt-get install -y \
    pkg-config \
    libfontconfig1-dev \
    libudev-dev \
    libinput-dev \
    libgbm-dev \
    libxkbcommon-dev \
    libseat-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
