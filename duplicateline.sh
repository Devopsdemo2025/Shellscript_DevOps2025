#!/bin/bash
#set -x

while read line
do
    tmp=`echo $line`
    count=0

    while read line1
    do
        tmp1=`echo $line1`
        if [ "$tmp" == "$tmp1" ]; then
            echo "duplicate found"
            exit 1
        else
            echo "Duplicate is not found"
        fi
    done < out.txt

    count=$((count+1))
done < out.txt

