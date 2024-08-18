#!/bin/bash

set -euox pipefail

mkdir -p ~/binaries/x86_64
mkdir -p ~/binaries/aarch64

cd ~/usbhubctl/usbhubctl_sysfs

# Compile for x86
rm -f usbhubctl_sysfs
make
cp usbhubctl_sysfs ~/binaries/x86_64

# Compile for arm
rm -f usbhubctl_sysfs
make CC=/usr/bin/aarch64-linux-gnu-gcc
cp usbhubctl_sysfs ~/binaries/aarch64

(cd ~ && tar -czf binaries.tgz binaries)
