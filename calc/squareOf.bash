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

let sum=$num*$num

echo "The square of ${num} is ${sum}"
