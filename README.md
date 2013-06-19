[build memo]

0. git clone SOURCE

 $ git clone git://github.com/caplio/dlxj_boot_ramdisk.git
 $ git clone git://github.com/caplio/dlxj-kernel.git

1.download linaro

 $ wget --no-check-certificate "https://launchpad.net/linaro-toolchain-binaries/trunk/2013.05/+download/gcc-linaro-arm-linux-gnueabihf-4.8-2013.05_linux.tar.bz2"

2. move to CROSCOMPLIER PATH

 $ tar jxvf gcc-linaro-arm-linux-gnueabihf-4.8-2013.05_linux.tar.bz2
 $ mv gcc-linaro-arm-linux-gnueabihf-4.8-2013.05_linux /opt/toolchains/ 

3. make defconfig 

 $ cd dlxj-kernel
 $ make deluxe_j_defconfig 

4. edit config 

 $ make menuconfig

5. build it

 $ make -j8

6. create boot.img

 $ create2.sh
