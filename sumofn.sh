#!/bin/bash

sum=0
for num in "$@"
do
sum=`expr $sum + $num`
done
echo "sum of given number is $sum"
