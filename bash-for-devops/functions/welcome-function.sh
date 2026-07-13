#!/bin/bash 

# ----------------------------------------------------------
# File    : welcome.sh
# Purpose : Demonstrate how to create and call functions
#
# Concepts Covered:
# - Function declaration
# - Function invocation
# - Variables
# - Command substitution
# ----------------------------------------------------------

welcome_message() {
    echo "Welcome to Bash Functions!"
    echo "Current User : $(whoami)"
    echo "Current Date : $(date)"
}

welcome_message
