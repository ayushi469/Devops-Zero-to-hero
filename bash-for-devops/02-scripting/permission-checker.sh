#!/bin/bash 


echo "check if file is there or not:"
read file

if [ ! -f "$file" ]
then
	echo "File doesnt exists"
elif [ -f "$file" ] && [ -r "$file" ]
then
	echo "File exists and it has read permission"
else 
	echo "File exits but doesn't have permission to read."
fi

