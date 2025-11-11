#!/bin/bash
echo "Enter a number:"
read n
i=1
while [ $i -le $n ]
do
  echo $i
  sleep 1    # wait for 1 second
  i=$((i + 1))
done
