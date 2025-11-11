#!/bin/bash

ls -lrt | awk -F " " 'NR>1 {print $NF}' > output
total= `cat output | wc -l`
echo "Please enter number of files"
read count

value=`expr $total - $count`
head -$value output | xargs rm -rf



