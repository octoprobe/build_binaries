#!/bin/bash

set -euox pipefail

echo ============ BUILD teensy_loader_cli

support_teensy_loader_cli/0_git_clone_teensy_loader_cli.sh

support_teensy_loader_cli/1_compile_teensy_loader_cli.sh

echo ============ BUILD picotool

support_picotool/0_git_clone_sdk.sh

support_picotool/1_git_clone_picotool.sh

support_picotool/2_compile_picotool.sh
