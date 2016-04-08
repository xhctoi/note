count=64
dev=$1
ifconfig $dev 192.168.0.33
while [ $count -le 4096 ]; 
do
    ping 192.168.0.113 -s $count -I $dev -c 10
    count=`expr $count + 1`
done
