#!/bin/bash

# Check if directory argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No directory path provided"
    echo "Usage: $0 <absolute_directory_path>"
    exit 1
fi

dir_path=$1

# Check if the path is a directory
if [ ! -d "$dir_path" ]; then
    echo "Error: '$dir_path' is not a valid directory"
    exit 1
fi

file_count=$(ls -1 "$dir_path" | wc -l)
echo "Number of files in '$dir_path': $file_count"