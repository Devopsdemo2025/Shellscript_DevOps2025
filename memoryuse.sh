#!/bin/bash

memo=`df -h . | awk -F " " 'NR > 1 {print $(NF-1)}' | sed  's/%//g'`

if [ $memo -gt 30 ]
then
#echo "Memory used by the system is $memo"
mail -s "Memory used by the system is $memo" sandeepvarambally@gmail.com
fi
