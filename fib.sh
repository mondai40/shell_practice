#!/bin/bash

read -p "Enter the number of elements: " elements

function fib() {
	declare -a fibNum=(1 1)
	echo ${fibNum[0]}
	echo ${fibNum[1]}
	for (( i=2; i < $1; i++ )); do
		fibNum[$i]=$((${fibNum[$i-2]} + ${fibNum[$i-1]}))
		echo ${fibNum[$i]}
	done
}

fib $elements
