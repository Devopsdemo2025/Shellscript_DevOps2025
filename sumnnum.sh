#!/bin/bash

echo "Enter the number to calculate the sum"
read num
sum=0

while [ $num -gt 0 ]
do
sum=`expr $num + $sum`
num=`expr $num - 1`
done
echo "Then sum of number is $sum"
