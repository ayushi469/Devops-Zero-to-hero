#!/bin/bash 


###########################################################
#read command : It takes input after scripts starts
#command like arguments: User provide the input before the scripts start

#Generally, as devops enginner we use command line arguments more often

###########################################################

echo "#############"
echo "---- Student Details -------"
echo "############################" 
echo "Enter the name"
read name
echo $name

echo 

echo "Enter the city"
read city
echo $city

echo 

echo "Enter the age"
read age
echo $age

echo 

echo "Enter the all student information: $1, $2, $3"
