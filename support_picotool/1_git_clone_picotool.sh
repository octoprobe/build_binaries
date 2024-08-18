#!/bin/bash

set -euox pipefail

cd ~

rm -rf picotool

git clone --depth 1 --branch 2.0.0 https://github.com/raspberrypi/picotool.git

cd picotool
