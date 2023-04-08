#!/bin/bash

echo "Enter the directory path"
read dir_path

if [ ! -d "$dir_path" ]; then
    echo "Error: Invalid directory path"
    exit 1
fi

fileCount=$(find "$dir_path" -type f | wc -1)

echo "The number of files in the directory $dir_path is: $fileCount"