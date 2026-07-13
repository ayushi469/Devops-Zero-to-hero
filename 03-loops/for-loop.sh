#!/bin/bash

# ----------------------------------------------------------
# File    : for-loop.sh
# Purpose : Demonstrate the use of a for loop
#
# Concepts Covered:
# - for loop
# - Sequence generation
# - Variable expansion
# - Loop iteration
# ----------------------------------------------------------

echo "Printing numbers from 1 to 10"
echo

for number in {1..10}
do
    echo "Number: $number"
done

echo
echo "Loop completed successfully."


########## second way to do:

for number in $(seq 1 10)
do 
	echo "Number: $number"
done

echo
echo "Loop completed successfully."
