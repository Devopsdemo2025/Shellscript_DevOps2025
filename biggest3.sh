#!/bin/bash

if [ $# -ne 3 ]
then
echo "Please enter 3 number"
exit 1 
fi

if [ $1 -gt $2 ] && [ $1 -gt $3 ]
then
echo "$1 is greater"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
echo "$2 is greater"
else
echo "$3 is greater"
fi
