#!/bin/bash

declare -i num

#read -p "Type your favorite number: " num
num=$1

if [[ $num -ge 1 ]] && [[ $num =~ [1-9][0-9]* ]]; then
	true
else
	echo "The number should be greater than 0"
	exit 1
fi

echo "The Factors of ${num} are "

i=1
endNum=$num
while [[ $i -le $endNum ]]; do
	if [[ `expr $num % $i` -eq 0 ]]; then
		let endNum="$num / $i"
		echo "$i $endNum"
	fi
	let i=$i+1
done

