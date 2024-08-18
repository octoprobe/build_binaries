#!/bin/bash

set -euox pipefail

apt-get -y update

apt-get install -y \
  git cmake \
  build-essential pkg-config libusb-1.0-0-dev \
  gcc-aarch64-linux-gnu g++-aarch64-linux-gnu