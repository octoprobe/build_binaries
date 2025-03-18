#!/bin/bash

set -euox pipefail

cd $WORKDIR

rm -rf picotool

git clone --depth 1 --branch 2.1.1 https://github.com/raspberrypi/picotool.git

cd picotool
