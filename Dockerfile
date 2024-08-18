FROM ubuntu:24.04
# FROM ubuntu:latest

ENV GITHUB_WORKSPACE=/home/ubuntu/build_binaries

COPY support_common $GITHUB_WORKSPACE/support_common
RUN $GITHUB_WORKSPACE/support_common/0_apt_install.sh

USER ubuntu

WORKDIR /home/ubuntu

COPY support_usbhubctl $GITHUB_WORKSPACE/support_usbhubctl
RUN $GITHUB_WORKSPACE/support_usbhubctl/all.sh

COPY support_picotool $GITHUB_WORKSPACE/support_picotool
RUN $GITHUB_WORKSPACE/support_picotool/all.sh

CMD ["sleep", "infinity"]
