#!/bin/bash

a=$1
b=$2
c=$3

if [[ $a -ge 1 ]] && [[ $b -ge 1 ]] && [[ $c -ge 1 ]]; then
	true
else
	echo "You need to put 3 numbers."
	exit 1
fi

#let sum=$1*$2*$3
sum=`expr $1 \* $2 \* $3`

echo "$1 * $2 * $3 = $sum"
