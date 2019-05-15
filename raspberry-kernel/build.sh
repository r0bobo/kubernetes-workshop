#!/bin/bash

set -eu

PATH=$PWD/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin:$PATH

git clone --depth=1 https://github.com/raspberrypi/linux || true
git clone --depth=1 https://github.com/raspberrypi/tools || true

cd linux
KERNEL=kernel7
make -j4 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2709_defconfig

cp kernel-config linux/.config
make -j4 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs
