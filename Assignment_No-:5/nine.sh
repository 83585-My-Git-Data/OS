#!/bin/bash

echo "Enter a number:"
read number

factorial=1

if [ $number -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
elif [ $number -eq 0 ]; then
    echo "Factorial of 0 is 1."
else
    for (( i = 1; i <= number; i++ )); do
        factorial=$((factorial * i))
    done
    echo "Factorial of $number is $factorial."
fi

