loop=1
while [ $loop -le 2048 ];
do
    dd if=/dev/zero of=/home/root/test.bin bs=1M count=$loop conv=fsync
    cp -f /home/root/test.bin /run/media/mmcblk0p1/
    loop=`expr $loop + 1`
done
