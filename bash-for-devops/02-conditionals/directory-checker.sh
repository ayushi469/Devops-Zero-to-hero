#!/bin/bash 


echo "print the directory:"
read dir

if [ -d "$dir" ]
then
	echo "Directory found"
else
	echo "Directory not found"
fi
