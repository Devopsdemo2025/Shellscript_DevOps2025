#!/bin/bash

var=(10 20 30 40 50)

echo "Enter the number to search"
read num
i=0

for value in "${var[@]}"
do
        if [ "$value" -eq "$num" ] 
        then
               echo "given number is found in array"
        i=1
        exit 0
        fi
done
if [ $i -eq 0 ] 
then
    echo "$num not found in array."
    
#else
    #echo "$num found in array."
fi
