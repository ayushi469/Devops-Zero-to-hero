#!/bin/bash 


echo "Print the filename:"
read file 

if [ -f file.txt ]
then
	echo "File exists"
else 
	echo "File doesn't exists"
fi
