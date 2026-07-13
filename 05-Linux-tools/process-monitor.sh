#!/bin/bash

# ----------------------------------------------------------
# File    : process-monitor.sh
# Purpose : Check whether a process is running
#
# Concepts Covered:
# - ps command
# - grep command
# - Command substitution
# - if-else statements
# - Exit status ($?)
# ----------------------------------------------------------


echo "Enter the process name: "
read process

ps -ae | grep -i $process

if [ $? -eq 0 ]
then
	echo "Process in running!!"
else
	echo "Process is not present!!"
fi
