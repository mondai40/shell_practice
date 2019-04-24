#!/bin/bash

#prime_number is a number which can be divided 1 and itself.

#define variables
declare -i FirstNum
declare -i LastNum
declare -i PrimeNum=0

#input the numbers
read -p "Please type the first number: " FirstNum
read -p "Please type the last number: " LastNum

#Check the input numbers are correct
function CheckNum() {
	if [[ $1 -gt 0 ]] && [[ $1 =~ [1-9][0-9]* ]]; then
		if [[ $2 -gt 0 ]] && [[ $2 =~ [1-9][0-9]* ]]; then
			true	
		else
			echo "The last number is wrong. Number should be greater than 0"
			exit 1
		fi
	else
		echo "The first number is wrong. Number should be greater than 0"
		exit 1
	fi
	
	if [[ $1 -le $2 ]]; then
		true
		return 0
	else
		echo "The first number should be less than the last number."
		exit 2
	fi
}

function FindPrimeNum() {
for i in `seq $1 1 $2`; do
	j=1
	CountNum=0
	while [[ $j -le $i ]]; do
		if [[ `expr $i % $j` -eq 0 ]]; then
			CountNum=`expr $CountNum + 1`
			if [[ $CountNum -gt 3 ]]; then
				j=`expr $j + 1`
				break
			fi
			j=`expr $j + 1`
		else
			j=`expr $j + 1`
		fi
	done
	if [[ $CountNum -eq 2 ]]; then
		echo $i
		PrimeNum=`expr $PrimeNum + 1`
	fi
done

echo "There are $PrimeNum prime numbers."
}

CheckNum $FirstNum $LastNum
FindPrimeNum $FirstNum $LastNum
