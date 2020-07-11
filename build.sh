#!/bin/bash

make -C mips-rt/native_lib
RUST_TARGET_PATH=$(pwd) xargo build --target mipsel-none --release

xc32-bin2hex target/mipsel-none/release/pic32mx470-rs-hello-world
