#!/bin/bash 

# ----------------------------------------------------------
# File    : file-checker.sh
# Purpose : Check whether a file exists and if it is readable
#
# Concepts Covered:
# - if, elif, else
# - File test operators (-f, -r)
# - Logical AND (&&)
# - User input using read
# - Conditional execution
# ----------------------------------------------------------


echo "Enter the file:"
read file

if [ ! -f "$file" ]
then
	echo "File doesn't exists"
elif [ -f "$file" ] && [ -r "$file" ]
then
	echo "File exists and it has read permission"
else 
	echo "File exits but doesn't have permission to read."
fi

