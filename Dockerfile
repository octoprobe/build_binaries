FROM ubuntu:24.04
# FROM ubuntu:latest

RUN apt-get -y update

RUN apt-get install -y \
  git cmake \
  build-essential pkg-config libusb-1.0-0-dev \
  gcc-aarch64-linux-gnu g++-aarch64-linux-gnu

ENV MOUNTDIR=/mountdir
RUN mkdir /workdir
RUN chmod a+rwx /workdir
ENV WORKDIR=/workdir

