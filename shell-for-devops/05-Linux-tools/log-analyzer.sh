#!/bin/bash 

# ----------------------------------------------------------
# File    : log-analyzer.sh
# Purpose : Count ERROR and WARNING messages in a log file
#
# Concepts Covered:
# - grep
# - wc
# - File existence check
# - Variables
# - Command substitution
# ----------------------------------------------------------

echo "Enter the logfile path:"
read logfile

if [ -f "$logfile" ]
then
	echo "Total number of ERROR lines:"
	error_count=$(grep -ci error $logfile)
	echo $error_count
	echo

	echo "Total number of WARNING lines:"
	cat $logfile | grep -ci warning
	echo

	echo "Total number of INFO lines:"
	cat $logfile | grep -ci info

	if [ $error_count -eq 0 ]
	then
		echo "System looks healthy"
	else 
		echo "Error founds. Check logs!!"
	fi
fi
