#!/bin/bash

echo "Please enter the filename"
read filename
n=0
while read word
do
wordcount=`echo $word | wc -w`
n=`expr $n + 1`
echo "Number of words in line $n is $wordcount"
done < $filename
