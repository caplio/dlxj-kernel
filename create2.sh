##
## zImage to boot.img test script...
##


RAMDISK="../dlxj_boot_ramdisk"
TMPDIR="./tmp/ramdisk"

# copy boot ramdisk >> $TMPDIR
mkdir -p $TMPDIR
cp -pr $RAMDISK/* $TMPDIR/

# copy *.ko file to $TMPDIR/lib/modules
find -name '*.ko' ! -path $TMPDIR -exec cp -av {} $TMPDIR/lib/modules \;

# rm .gitignore
find $TMPDIR -name '*.gitignore' -print | xargs rm

# create boot image >> output dir

if [ ! -e output ];	then 
	mkdir output
fi

./build-tools/repack-bootimg.pl arch/arm/boot/zImage $TMPDIR ./output/boot`date +%m%d`-`cat .version`.img

# delete tmp dir
rm -rf $TMPDIR

echo "output to ./output/boot`date +%m%d`-`cat .version`.img"


