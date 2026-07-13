#!/bin/bash

# ---------------------------------------
# File: command-line-arguments.sh
# Purpose: Demonstrate command-line arguments
# Usage:
# ./command-line-arguments.sh Ayushi DevOps
# ---------------------------------------

echo "First Argument	 	: $1"
echo "Second Argument: 		: $2"


echo "Script Name: 		: $0"
echo "Total Arguments: 		: $#"
echo "All Arguments: 		: $@"
echo "Process ID: 		: $$"
