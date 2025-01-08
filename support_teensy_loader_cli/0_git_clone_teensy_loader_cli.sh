#!/bin/bash

set -euox pipefail

cd $WORKDIR

rm -rf teensy_loader_cli

git clone --depth 1 --branch 2.3 https://github.com/PaulStoffregen/teensy_loader_cli.git

cd teensy_loader_cli
