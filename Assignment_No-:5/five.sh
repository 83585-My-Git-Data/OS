#!/bin/bash

# Prompt the user to enter three numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

# Determine the greatest number
if [ "$num1" -ge "$num2" ] -a [ "$num1" -ge "$num3" ]; then
    greatest=$num1
elif [ "$num2" -ge "$num1" ] -a [ "$num2" -ge "$num3" ]; then
    greatest=$num2
else
    greatest=$num3
fi

# Display the greatest number
echo "The greatest number is: $greatest"

