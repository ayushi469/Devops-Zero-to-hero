#!/bin/bash 

# ----------------------------------------------------------
# File    : number-check.sh
# Purpose : Compare two numbers using conditional statements
#
# Concepts Covered:
# - if, elif, else
# - Numeric comparison operators (-gt, -lt)
# - User input using read
# - Conditional execution
# ----------------------------------------------------------


echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

echo

if [ "$num1" -gt "$num2" ]
then
	echo "$num1 is greater than $num2."
elif [ "$num1" -lt "$num2" ]
then
	echo "$num2 is greater than $num1."
else 
	echo "Both numbers are equal."
fi
