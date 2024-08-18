#!/bin/bash

set -euox pipefail

cd $GITHUB_WORKSPACE

support_picotool/0_git_clone_sdk.sh

support_picotool/1_git_clone_picotool.sh

support_picotool/2_compile_picotool.sh
