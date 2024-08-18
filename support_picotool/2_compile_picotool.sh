#!/bin/bash

set -euox pipefail

export PICO_SDK_PATH=~/pico-sdk

mkdir -p ~/binaries/x86_64
mkdir -p ~/binaries/aarch64

cd ~/picotool

# Compile for x86
(
  rm -rf build
  mkdir build
  cd build
  cmake ..
  make

  cp picotool ~/binaries/x86_64
)

# Compile for arm
cd ~/picotool

cp $GITHUB_WORKSPACE/support_picotool/rpi_toolchain.cmake ~/picotool
(
  rm -rf build
  mkdir build
  cd build
  cmake -DCMAKE_TOOLCHAIN_FILE=../rpi_toolchain.cmake ..
  make

  cp picotool ~/binaries/aarch64
)

(cd ~ && tar -czf binaries.tgz binaries)
