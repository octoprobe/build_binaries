#!/bin/bash

set -euox pipefail

cd $WORKDIR

rm -rf usbhubctl

git clone https://github.com/octoprobe/usbhubctl.git

