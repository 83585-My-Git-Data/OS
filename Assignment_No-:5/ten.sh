#!/bin/bash

read -p "Enter the number of terms: " n

a=0
b=1

echo "Fibonacci Series up to $n terms:"
for ((i=1; i<=n; i++)); do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
echo

