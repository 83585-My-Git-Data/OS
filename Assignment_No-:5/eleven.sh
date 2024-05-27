#!/bin/bash

read -p "Enter basic salary: " basic_salary

da=$(echo "scale=2; 0.4 * $basic_salary" | bc)
hra=$(echo "scale=2; 0.2 * $basic_salary" | bc)
gross_salary=$(echo "scale=2; $basic_salary + $da + $hra" | bc)

echo "Gross salary: $gross_salary"

