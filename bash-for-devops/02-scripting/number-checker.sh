#!/bin/bash 


#### Number compression operator
echo "Print the number here"
read number

if [ "$number" -gt 0 ]
then
	echo "Positive. yay!!"
elif [ "$number" -eq 0 ]
then
	echo "Zero. It's ok!!"
else 
	echo "Negative. Bad luck!!"
fi
