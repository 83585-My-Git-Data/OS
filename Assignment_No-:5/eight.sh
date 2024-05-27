#!/bin/bash

echo "Enter a number:"
read number

echo "Table of $number:"
for (( i = 1; i <= 10; i++ )); do
    echo "$number x $i = $((number * i))"
done

