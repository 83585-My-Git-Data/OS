#!/bin/bash

read -p "Enter first file name: " file1
read -p "Enter second file name: " file2

if [ -f "$file1" ]; then
    tr '[:upper:][:lower:]' '[:lower:][:upper:]' < "$file1" >> "$file2"
    echo "Contents of $file1 appended in reverse case to $file2"
else
    echo "File $file1 does not exist."
fi

