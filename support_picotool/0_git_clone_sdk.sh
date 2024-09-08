#!/bin/bash

set -euox pipefail

cd $WORKDIR

rm -rf pico-sdk

git clone --depth 1 --branch 2.0.0 https://github.com/raspberrypi/pico-sdk.git

(cd pico-sdk && git submodule update --depth 1 --init lib/mbedtls)
