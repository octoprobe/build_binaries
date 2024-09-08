#!/bin/bash

#
# This script mimics the github workflow.
# It creates a local docker image.
# Then it starts a container and copies the binaries into binaries.tgz
#
set -euox pipefail

rm -rf binaries.tar binaries

export MOUNTDIR=/mountdir
docker buildx build --tag picotool_builder .
docker run -i --rm -v $PWD:$MOUNTDIR -w $MOUNTDIR --user $(id -u):$(id -g) picotool_builder ./all.sh

tar -czf binaries.tgz binaries
