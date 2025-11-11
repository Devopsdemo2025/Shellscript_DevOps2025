#!/bin/bash

num="10 20 30 40"

for i in $num
do
        sum=expr $sum + $i
done
echo "The sum of all elements in array is $sum"
