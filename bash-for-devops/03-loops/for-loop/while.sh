#!/bin/bash

# ----------------------------------------------------------
# File    : while-loop.sh
# Purpose : Demonstrate the use of a while loop
#
# Concepts Covered:
# - while loop
# - Numeric comparison
# - Arithmetic operations
# - Loop control
# ---------------------------------------------------------- 

count=1

echo "Printing numbers using a while loop"
echo

while [ "$count" -le 10 ]
do
    echo "Count: $count"
    ((count++))
done

echo
echo "Loop completed successfully."
