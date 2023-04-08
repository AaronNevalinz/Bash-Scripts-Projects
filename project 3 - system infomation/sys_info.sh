#!/bin/bash

# Display CPU Usage
echo "CPU Usage:"

top -bn1 | grep load | awk '{printf"%.2f%%\n", $(NF-2)}'


# display memory Usage
echo "Memory Usage:"

free | awk 'NR==2{printf"%.2f%%\n", $3*100/$2}'


# display disk space
echo "Disk Space:"

df -h | awk '$NF=="/"{printf"%s\n", #5}'


