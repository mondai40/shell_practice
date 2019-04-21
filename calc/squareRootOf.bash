#!/bin/bash

declare -i num

num=$1

if [[ $num -ge 1 ]] && [[ $num =~ [1-9][0-9]* ]]; then
        true
else
        echo "The number shoul be greater than 0"
        exit 1
fi

for i in `seq 1 1 $1`; do
	if [[ `expr $i \* $i` -gt $1 ]]; then
		let bet_num=$i-1
		break
	fi
done

div_num=`echo "scale=10; $num / $bet_num" | bc`
ave_num=`echo "scale=10; ($div_num + $bet_num) / 2" | bc`
for (( i=1; i<=5; i++ )); do
	div_num=`echo "scale=10; $num / $ave_num" | bc`
	ave_num=`echo "scale=10; ($div_num + $ave_num) / 2" | bc`
done

result=$ave_num

echo "The square root of ${num} is ${result} and -${result}."
