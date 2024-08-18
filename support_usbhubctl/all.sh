#!/bin/bash

set -euox pipefail

cd $GITHUB_WORKSPACE

support_usbhubctl/0_git_clone_usbhubctl.sh

support_usbhubctl/1_compile_usbhubctl_sysfs.sh
