#!/bin/bash 


calculator() {
	c=$(( $1 + $2 ))
	echo "Addition of number is "$1" and "$2" is: $c"
}

calculator $1 $2



## other way :

substract_calculator() {
	a=$1
	b=$2
	echo "Sub is for these $a and $b is: $(( a - b ))"
}

substract_calculator "$1" "$2" 
