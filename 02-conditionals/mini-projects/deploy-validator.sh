#!/bin/bash 

echo "Which application you have used?"
read app

echo "Which enviorment you have used (qa, dev or prod )?"
read env

if [ "$env" == "prod" ]
then
	echo "Production deployment selected."
else 
	echo "Non-production deployment selected."
fi
