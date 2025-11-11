#!/bin/bash
set -x
echo "enter the filename"
read filename
i=1
while read line
do
  if [ $i -gt 1 ]
  then
    age=`echo $line | awk -F " " '{print $NF}'`
    if [ $age -gt 60 ]
    then
      echo $line | awk -F " " '{print $2}'
    fi
  fi
  i=`expr $i + 1`
done < $filename
