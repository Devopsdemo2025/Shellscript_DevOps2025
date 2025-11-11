#!/bin/bash
echo "Enter a number"
read num

current_num=$num
sum=0

echo "Numbers from $num"
while [ $current_num -ge 1 ]
do
  echo "$current_num" 
  sum=$((sum + current_num))
  current_num=$((current_num - 1))
done

echo "The sum of these numbers is $sum"
