#!/bin/bash

num="5 8 6"

for n in $num
do
fact=1
temp=$n
while [ $n -gt 0 ]
do
fact=`expr $fact \* $n`
n=`expr $n - 1`
done
echo "Factorial of $temp is $fact"
done
