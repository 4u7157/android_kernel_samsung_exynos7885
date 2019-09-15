#!/bin/bash
rm -rf out 
COMMON_ARGS=" ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- "
export PATH=../PLATFORM/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:$PATH
export ARCH=arm64
export ANDROID_MAJOR_VERSION=p
make clean  && make mrproper 
make  ${COMMON_ARGS}   exynos7885-a30_defconfig
//make menuconfig 
make -j$(nproc --all)    ${COMMON_ARGS} CONFIG_DEBUG_SECTION_MISMATCH=y
