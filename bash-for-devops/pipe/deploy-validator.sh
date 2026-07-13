#!/bin/bash 

echo "Print the directory"
read dir

if [ -d "$dir" ]
then
	echo "created already" > deploy.log
else 
	mkdir "$dir" > errors.log 2>&1
fi
