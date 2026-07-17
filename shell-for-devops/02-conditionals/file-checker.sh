#!/bin/bash 

# ----------------------------------------------------------
# File    : file-checker.sh
# Purpose : Check whether a file exists
#
# Concepts Covered:
# - File test operator (-f)
# - if-else statements
# - User input using read
# - Conditional execution
# ----------------------------------------------------------


echo "Enter the file name:"
read filename

echo 

if [ -f "$filename" ]
then
	echo "File exists."
else 
	echo "File doesn't exists."
fi
