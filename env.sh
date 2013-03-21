export ARCH=arm
#export CROSS_COMPILE=/data/buildroot-AmLogic-ds/output/external-toolchain/bin/arm-none-linux-gnueabi-
export CROSS_COMPILE=/data/toolchain/arm-2010.09/bin/arm-none-linux-gnueabi-
#export CROSS_COMPILE= /data/ainol_elfii_common/toolchain/android-eabi_472/bin/arm-none-linux-gnueabi-
#export CROSS_COMPILE=arm-none-linux-gnueabi-

make clean
make meson6_atv1200_defconfig

#make menuconfig
#make vmlinux

TOP=${PWD}
export MKIMAGE=${TOP}/arch/arm/boot/mkimage
make uImage
#make modules
