#!/bin/bash

echo "Enter the number to calculate factorial"
read f
mul=1
while [ $f -gt 0 ]
do
mul=`expr $mul \* $f`
f=`expr $f - 1`
done
echo "factorial of a number is $mul"
