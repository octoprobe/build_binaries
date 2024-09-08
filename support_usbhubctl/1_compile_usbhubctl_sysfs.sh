#!/bin/bash

set -euox pipefail

mkdir -p $MOUNTDIR/binaries/x86_64
mkdir -p $MOUNTDIR/binaries/aarch64

cd $WORKDIR/usbhubctl/usbhubctl_sysfs

# Compile for x86
rm -f usbhubctl_sysfs
make
cp usbhubctl_sysfs $MOUNTDIR/binaries/x86_64

# Compile for arm
rm -f usbhubctl_sysfs
make CC=/usr/bin/aarch64-linux-gnu-gcc
cp usbhubctl_sysfs $MOUNTDIR/binaries/aarch64
