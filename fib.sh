#!/bin/bash

echo "Please enter the number of terms in the Fibonacci series:"
read fib

a=0
b=1

echo -n "$a, $b"

for (( i=2; i<fib; i++ ))
do
    c=$((a + b))
    echo -n ", $c"
    a=$b
    b=$c
done

echo

