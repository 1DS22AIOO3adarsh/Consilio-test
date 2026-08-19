#!/bin/bash

# Read two numbers from the user
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

# Validate that inputs are numbers
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter valid integer numbers."
    exit 1
fi

# Let the user choose an operation
echo "Choose an operation:"
echo "1. Addition"
echo "2. Multiplication"
echo "3. Division"
echo "4. Subtraction"
read choice

# Perform the selected operation
case "$choice" in
    1)
        result=$((num1 + num2))
        echo "Sum = $result"
        ;;
    2)
        result=$((num1 * num2))
        echo "Product = $result"
        ;;
    3)
        # Handle division by zero
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
            exit 1
        fi

        result=$((num1 / num2))
        echo "Quotient = $result"
        ;;
    4)
        result=$((num1 - num2))
        echo "Difference = $result"
        ;;
    *)
        echo "Invalid choice! Please select 1, 2, 3, or 4."
        ;;
esac