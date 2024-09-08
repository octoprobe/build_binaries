#!/bin/bash

set -euox pipefail

echo ============ BUILD picotool

support_picotool/0_git_clone_sdk.sh

support_picotool/1_git_clone_picotool.sh

support_picotool/2_compile_picotool.sh

echo ============ BUILD usbhubctl_sysfs

support_usbhubctl/0_git_clone_usbhubctl.sh

support_usbhubctl/1_compile_usbhubctl_sysfs.sh
