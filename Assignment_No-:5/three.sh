#!/bin/bash

# Prompt the user to enter a name
read -p "Enter the name of a file or directory: " name

# Check if the name exists
if [ -e "$name" ]; then
    if [ -f "$name" ]; then
        # If it is a file, display its size
        size=$(stat -c%s "$name")
        echo "$name is a file with size $size bytes."
    elif [ -d "$name" ]; then
        # If it is a directory, display its contents
        echo "$name is a directory. Its contents are:"
        ls -l "$name"
    else
        echo "$name exists but is neither a file nor a directory."
    fi
else
    echo "$name does not exist."
fi

