#!/bin/bash

echo "Please provide the filename"
read filename
n=1
output="EmpID-EmpName :"

while read line
do
  if [ $n -gt 1 ]
  then
    age=$(echo "$line" | awk -F " " '{print $NF}')
    if [ "$age" -gt 60 ]
    then
      EmpID=$(echo "$line" | awk -F " " '{print $1}')
      EmpName=$(echo "$line" | awk -F " " '{print $2}')
      output="$output $EmpID-$EmpName,"
    fi
  fi
  n=$((n + 1))
done < "$filename"

echo "${output%,}"
