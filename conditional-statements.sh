#find out number is even or not

#!/bin/bash

echo "entered number:$1"

if [ $(($1 %2)) -eq 0 ]; then
    echo "given number $1 is even"
else
    echo "given number $1 is odd"
fi

#check if number is greater than 10

echo "entered number:$2"

if [ $2 -lt 10 ]; then
    echo "entered number $2 is less than 10"
elif [ $2 -eq 10 ]; then
    echo "entered number $2 is equal to 10"
else
    echo "entered number $2 is greater than 10"
fi

