#!/bin/bash

# Read two numbers from the user
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

# Let the user choose an operation
echo "Choose an operation:"
echo "1. Addition"
echo "2. Multiplication"
read choice

# Perform the selected operation
if [ "$choice" -eq 1 ]; then
    result=$((num1 + num2))
    echo "Sum = $result"
elif [ "$choice" -eq 2 ]; then
    result=$((num1 * num2))
    echo "Product = $result"
else
    echo "Invalid choice! Please select 1 or 2."
fi