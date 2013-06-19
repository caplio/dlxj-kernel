#[build memo]

###1.git clone SOURCE

    $ git clone git://github.com/caplio/dlxj_boot_ramdisk.git
    $ git clone git://github.com/caplio/dlxj-kernel.git

###2.download linaro

    $ wget --no-check-certificate "https://launchpad.net/linaro-toolchain-binaries/trunk/2013.05/+download/gcc-linaro-arm-linux-gnueabihf-4.8-2013.05_linux.tar.bz2"

###3.move to CROSCOMPLIER PATH(Makefile CROSS_COMPILE PATH)

    $ tar jxvf gcc-linaro-arm-linux-gnueabihf-4.8-2013.05_linux.tar.bz2
    $ mv gcc-linaro-arm-linux-gnueabihf-4.8-2013.05_linux /opt/toolchains/ 

###4.make defconfig 

    $ cd dlxj-kernel
    $ make deluxe_j_defconfig 

###5.edit config 

    $ make menuconfig

###6.make it

    $ make -j8

###7.create boot.img

    $ create2.sh
