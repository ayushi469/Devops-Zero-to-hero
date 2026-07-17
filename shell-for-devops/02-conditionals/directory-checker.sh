#!/bin/bash 

# ----------------------------------------------------------
# File    : directory-checker.sh
# Purpose : Check whether a directory exists
#
# Concepts Covered:
# - Directory test operator (-d)
# - if-else statements
# - User input using read
# - Conditional execution
# ----------------------------------------------------------


echo "Enter the directory name:"
read dir

if [ -d "$dir" ]
then
	echo "Directory exits."
else
	echo "Directory not found."
fi
