#!/bin/bash

# ----------------------------------------------------------
# File    : string-check.sh
# Purpose : Compare two strings
#
# Concepts Covered:
# - String comparison
# - Equality operator (=)
# - if-else statements
# - User input using read
# - Variable expansion
# ----------------------------------------------------------

echo -n "Enter the first string: "
read string1

echo -n "Enter the second string: "
read string2

echo

if [ "$string1" = "$string2" ]; then
    echo "Both strings are equal."
else
    echo "Strings are different."
fi
