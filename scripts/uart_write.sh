count=1
while [ $count -le 2048 ]; 
do
    echo "abcdef1234567890-$count" > $1
    count=`expr $count + 1`
done
