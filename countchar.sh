#!/bin/bash

echo "Enter the filename"
read filename
n=1
while read charact
do
count=`echo $charact | wc -c`
echo "number of characters in line $n is $count"
n=`expr $n + 1`
done < $filename

