#!/bin/bash

echo "Please enter the pattern to serach in file"
read pat

grep -l -r $pat * > output
if [ $? -eq 0 ]
then
echo "searched pattern found in below file"
cat output
else
echo "searched pattern not found"
fi

