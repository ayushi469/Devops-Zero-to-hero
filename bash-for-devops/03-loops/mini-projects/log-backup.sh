#!/bin/bash 

echo "check if this directory exists or not"
read dir


if [ ! -d "$dir" ]
then
	echo "Doesn't exists and Creating a new Directory:"
	mkdir $dir
fi

for logfile in *.log
do
	cp $logfile $dir/$logfile
	echo $logfile is copied successfully.
done
