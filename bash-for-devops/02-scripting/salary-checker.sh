#!/bin/bash 


echo "print the salary:"
read salary

if [ "$salary" -ge 5000 ]
then
	echo "High salary"
else 
	echo "Low salary"
fi
