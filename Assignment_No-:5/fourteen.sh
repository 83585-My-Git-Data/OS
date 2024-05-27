#!/bin/bash

echo "Executable files in the current directory:"
ls -F | grep "*" | grep -v "@$"

