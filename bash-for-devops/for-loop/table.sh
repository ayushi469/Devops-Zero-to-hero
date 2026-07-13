#!/bin/bash 

echo "read the number:"
read num

for res in $(seq 1 10 )
do
     	multiplication_table="$((num*res))"
	echo "Multiplace table for $num * $res is : "$multiplication_table""
done

echo 
echo "Both the condition can be apply"
for ((res=1; res<=10; res++))
do
	echo "table is $num * $res is: $(( num*res ))"
done	
