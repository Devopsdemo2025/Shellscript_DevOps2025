#!/bin/bash

echo "Enter the number for factorial"
read fact
n=1
while [ $fact -gt 0 ]
do
	n=`expr $fact \* $n`
	fact=`expr $fact - 1 `
done
echo "fact of numb is $n"

