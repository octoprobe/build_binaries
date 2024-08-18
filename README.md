# Compile binaries for octoprobe

This github workflow will create the following artifacts:

```
binaries/x86_64/picotool
binaries/x86_64/usbhubctl_sysfs
binaries/aarch64/picotool
binaries/aarch64/usbhubctl_sysfs
```

The workflow is triggered by every push.

These binaries will the installed with octoprobe. See the installation instructions for octoprobe!

## Links

https://faelpinho.medium.com/how-to-install-picotool-on-manjaro-linux-6a5a3cfaf743

https://github.com/raspberrypi/picotool

https://jensd.be/1126/linux/cross-compiling-for-arm-or-aarch64-on-debian-or-ubuntu

https://amgaera.github.io/blog/2014/04/10/cross-compiling-for-raspberry-pi-on-64-bit-linux/

## Build system directory structure

This applies for `docker_compile.sh` AND the github workflow.

| Directory | Comment |
| - | - |
| GITHUB_WORKSPACE | https://github.com/octoprobe/build_binaries |
| ~/support_picotool |  |
| ~/support_usbhubctl |  |
| ~/pico-sdk | https://github.com/raspberrypi/pico-sdk.git |
| ~/picotool | https://github.com/raspberrypi/picotool.git |
| ~/usbhubctl | https://github.com/octoprobe/usbhubctl.git |
| ~/binaries.tgz |  |


## `docker_compile.sh`

This script will compile everything as the github workflow would.

Eventually, a `binaries.tgz` file is created.


## Releases and Tags

Add a tag and push

```bash
git tag -a v0.0.1
git push
git push --tags
```
