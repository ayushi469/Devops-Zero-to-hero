#!/bin/bash 

###########################
# In this bash, implemented the some of the basics like echo,
# about variable, how to write a comment
# and how to print variables
#############################
#set -exo pipefail

echo "#########################"
echo "Devops Learning - Day 1"
echo "##########################"

## Variables :
name="ayushi"
role="software developer"
course="IT"

echo 
echo Name: $name
echo Role: $role
echo Course: $course

echo
echo "Welcome to this devops zero to hero series for 30 days"
echo
## prints the server system related information: 
echo Current Date: 
date
echo Current User: 
whoami
host_name=$(hostname)
echo "hostname : $host_name"
echo Current Directory: 
pwd
