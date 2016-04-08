count=1
while [ $count -le 1024 ]; 
do
    gplay-1.0 ./test.mp3
    count=`expr $count + 1`
done
