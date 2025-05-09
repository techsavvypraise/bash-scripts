#!/bin/bash

# Check if filename argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No filename provided"
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

if [ -e "$filename" ]; then
    echo "File '$filename' exists"
else
    echo "File '$filename' does not exist"
fi