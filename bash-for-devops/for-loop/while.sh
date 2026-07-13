#!/bin/bash 


count=1

while [ $count -le 5 ]
do
	((++count))
	echo $count
done
