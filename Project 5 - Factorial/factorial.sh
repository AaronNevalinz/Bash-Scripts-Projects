#!/bin/bash

echo "Enter a number"
read number

factorial=1

if [ $number -lt 0 ]; then
    echo "Error: Invalid Input. Please enter a non negative number ..."
    exit 1
fi

if [ $number -eq 0 ]; then
    echo "The factorial of 0 is 1"
    exit 0
fi

for (( i=1; i<=$number; i++ )); do
    factorial=$((factorial*i))
done

echo "The factorial of $number is $factorial"