#!/bin/bash

#
# This script mimics the github workflow.
# It creates a local docker image.
# Then it starts a container and copies the binaries into binaries.tgz
#
set -euox pipefail

rm -f binaries.tgz

docker buildx build --tag picotool .
CONTAINER_ID=$(docker run -d picotool)
docker cp $CONTAINER_ID:/home/ubuntu/binaries.tgz binaries.tgz
docker container rm --force $CONTAINER_ID
