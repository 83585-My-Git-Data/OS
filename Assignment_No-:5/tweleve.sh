#!/bin/bash

filename=$1

if [ -f "$filename" ]; then
    last_modified=$(stat -c %y "$filename")
    echo "Last modified time of $filename: $last_modified"
else
    echo "File $filename does not exist."
fi

