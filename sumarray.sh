#!/bin/bash

num="12 45 14 35 32 68 78"
sum=0
for n in $num
do
sum=`expr $n + $sum`
done
echo "Sum of given array is $sum"
