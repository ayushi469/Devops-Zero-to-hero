#!/bin/bash

echo "print the process"
read process

ps -ae | grep -i $process

if [ $? -eq 0 ]
then
	echo "Process in running!!"
else
	echo "Process is not present!!"
fi
