#!/bin/bash

# get the current date and time
current_date=$(date +"%Y-%m-%d_%H-%M-%S")

# prompt user for the directory to back up
echo "Enter the directory to back up: "
read backup_directory

# check if specified directory exists
if [ ! -d "$backup_directory" ]; then
    echo "Error: Where's my directory, directory doesn't exist........"
    exit 1
fi

# create a tarball of the specified directory
tar -czf"${backup_directory}_${current_date}.tar.gz" "$backup_directory"

echo "Back up complete"