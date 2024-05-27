#!/bin/bash

# Prompt the user to enter a year
read -p "Enter a year: " year

# Check if the year is a leap year
if [ $((year % 4)) -ne 0 ]; then
    echo "$year is not a leap year."
elif [ $((year % 100)) -ne 0 ]; then
    echo "$year is a leap year."
elif [ $((year % 400)) -ne 0 ]; then
    echo "$year is not a leap year."
else
    echo "$year is a leap year."
fi

