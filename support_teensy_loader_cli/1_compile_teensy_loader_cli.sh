#!/bin/bash

set -euox pipefail

mkdir -p $MOUNTDIR/binaries/x86_64
mkdir -p $MOUNTDIR/binaries/aarch64

cd $WORKDIR/teensy_loader_cli

# Compile for x86
(
  make clean
  make LDFLAGS=-static

  cp teensy_loader_cli $MOUNTDIR/binaries/x86_64
)

# Compile for arm
# cd $WORKDIR/teensy_loader_cli

# (
  # Crosscompiling fails with:
  # /usr/lib/gcc-cross/aarch64-linux-gnu/13/../../../../aarch64-linux-gnu/bin/ld: cannot find -lusb: No such file or directory
  # make clean
  # make CC=/usr/bin/aarch64-linux-gnu-gcc

  # cp teensy_loader_cli $MOUNTDIR/binaries/aarch64
# )
