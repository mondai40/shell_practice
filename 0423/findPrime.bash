#!/bin/bash

#prime_number is a number which can be divided 1 and itself.

#define variables
declare -i inputNum

#input the numbers
read -p "Please type any number: " inputNum

#Check the input numbers are correct
function checkNum() {
	if [[ $1 =~ [1-9][0-9]* ]]; then
		true
	else
		echo "Wrong Number"
		exit 1
	fi
}

function findPrimeNum() {
j=1
CountNum=0
while [[ $j -le $1 ]]; do
	if [[ `expr $1 % $j` -eq 0 ]]; then
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
	#echo "${1} is a primu number."
	echo "True"
else 
	#echo "${1} is not a prime number."
	echo "False"
fi

}

checkNum $inputNum
findPrimeNum $inputNum
