#!/bin/bash 

echo "Print the project directory"
read dir 

if [ ! -d "$dir" ]
then
	echo "Directory doesn't exist!!"
else
	echo "Print the filename"
	read file

	if  [ -d "$dir" ] && [ -f "$dir/$file" ]
	then	
		echo "Directory exists and file exist!!"
	else 
		echo "File doesnt exists in this directory!!."
	fi
fi
