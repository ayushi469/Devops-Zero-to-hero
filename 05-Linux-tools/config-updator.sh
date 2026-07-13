#!/bin/bash 

# ----------------------------------------------------------
# File    : config-updater.sh
# Purpose : Replace text inside a configuration file
#
# Concepts Covered:
# - sed
# - User input
# - File existence check
# - Variables
# ----------------------------------------------------------


echo "What is filename"
read file

if [ -f "$file" ]
then
	echo "what is old text?"
	read old_text
	echo
	
	echo "what is new text?"
	read new_text
	echo

	sed -i '' "s/$old_text/$new_text/g" $file
	
	if [ $? -eq 0 ]
	then
		echo "Configuration updated successfully."
	else
		echo "Error came."
	fi
fi
