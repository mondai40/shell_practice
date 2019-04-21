

###This script is too slow###
###If you type bis number, your PC is gonna be "hot".###


#!/bin/bash

declare -i num

#read -p "Type your favorite number: " num
num=$1

if [[ $num -ge 1 ]] && [[ $num =~ [1-9][0-9]* ]]; then
	true
else
	echo "The number shoul be greater than 0"
	exit 1
fi

echo -n "The Factors of ${num} are "

i=1
while [[ $i -le $num ]]; do
	if [[ `expr $num % $i` -eq 0 ]]; then
		echo -n "$i "
	fi
	let i=$i+1
done

echo ""
