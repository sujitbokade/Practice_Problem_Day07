#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,
#etc and store them in an array


#!/bin/bash
read -p "enter lower limit:" lower
read -p "enter upper limit:" upper
index=0
for(( i = lower; i <= upper; ))
do
    if (( i % 11 == 0 ))
    then
        array[index++]=$i
        (( i += 11))
    else
        (( i++ ))
    fi
done
echo "The required numbers are: "
echo "${array[@]}"
