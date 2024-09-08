#!/bin/bash

set -euox pipefail

export PICO_SDK_PATH=$WORKDIR/pico-sdk

mkdir -p $MOUNTDIR/binaries/x86_64
mkdir -p $MOUNTDIR/binaries/aarch64

cd $WORKDIR/picotool

# Compile for x86
(
  rm -rf build
  mkdir build
  cd build
  cmake ..
  make

  cp picotool $MOUNTDIR/binaries/x86_64
)

# Compile for arm
cd $WORKDIR/picotool

(
  rm -rf build
  mkdir build
  cd build

  cp $MOUNTDIR/support_picotool/rpi_toolchain.cmake .
  
  cmake -DCMAKE_TOOLCHAIN_FILE=rpi_toolchain.cmake ..
  make

  cp picotool $MOUNTDIR/binaries/aarch64
)
