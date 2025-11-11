#!/bin/bash

echo "Please pass the filename"
read file
n=1
while read line
do
numchar=`echo $line | wc -c`
echo "Number of characters in line $n is $numchar"
n=`expr $n + 1`
done < $file
