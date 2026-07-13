#!/bin/bash 

# ----------------------------------------------------------
# File    : deploy-validator.sh
# Purpose : Validate deployment prerequisites
#
# Concepts Covered:
# - File and directory checks
# - Logical operators
# - Conditional statements
# - Exit status
# ----------------------------------------------------------


echo "Print the directory"
read dir

if [ -d "$dir" ]
then
	echo "created already" > deploy.log
else 
	mkdir "$dir" > errors.log 2>&1
fi
