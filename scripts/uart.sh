stty -F /dev/ttymxc0 speed 115200 cs8 -parenb -cstopb  -echo
stty -F /dev/ttymxc1 speed 115200 cs8 -parenb -cstopb  -echo
stty -F /dev/ttymxc2 speed 115200 cs8 -parenb -cstopb  -echo
stty -F /dev/ttymxc3 speed 115200 cs8 -parenb -cstopb  -echo

cat /dev/ttymxc2 &
./uart_write.sh /dev/ttymxc3
pid=`ps | grep cat | awk '{print $1}'`
kill -9 $pid

cat /dev/ttymxc3 &
./uart_write.sh /dev/ttymxc2
pid=`ps | grep cat | awk '{print $1}'`
kill -9 $pid

