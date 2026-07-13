#!/bin/bash

##################################
# Excercise for if-else condition :
###################################

### Using the numeric compression operator 
echo "Enter the age:"
read age

if [ "$age" -ge 18 ]
then
	echo "Eligible for vote!!"
else
	echo "Sorry, bad luck!!"
fi


#### using the string compression operator 

echo "tell me the name"
read name

if [ "$name" != "ayushi" ]
then
	echo "You are in 5th row, go to that line."
else
	echo "Go to 1st counter for the vote."
fi
