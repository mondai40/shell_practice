#!/bin/bash

#=============================================================
echo -e $'\e[1;31m1. Basic input (read) and put value in variable.\e[m'
sleep 1
read -p "Type your favorite word: " word
echo "${word}"
echo ""
#=============================================================
#
#=============================================================
echo -e $'\e[1;31m2. Basic output (echo) of environment variables\e[m'
sleep 1
echo "Your home directory is ${HOME}"
echo ""
#=============================================================
#
#=============================================================
echo -e $'\e[1;31m3. Basic Math. Add. Subtract. Multiply. Divide a number.\e[m'
sleep 1
num1=5
num2=3
let sum1=$num1+$num2
let sum2="$num1 - $num2"
sum3=`expr $num1 \* $num2`
sum4=$(($num1 / $num2))
echo "$num1 + $num2 = $sum1"
echo "$num1 - $num2 = $sum2"
echo "$num1 * $num2 = $sum3"
echo "$num1 / $num2 = $sum4"
echo ""
#=============================================================

#=============================================================
echo -e $'\e[1;31m4. Show me a Loop. Make a loop that counts from 0 to 100 inclusive\e[m'
sleep 1
sum=0
for ((i=1; i<=100; i++)); do
	sum=`expr $i + $sum`
	echo $sum
done
echo ""
#=============================================================

#=============================================================
echo -e $'\e[1;31m5. Make a loop that counts backwards from 100 ton inclusive \e[m'
sleep 1
i=100
sum=0
until [[ $i -le 0 ]]; do
	let sum=$sum+$i
	echo $sum
	let i=$i-1
done
echo ""
#=============================================================

#=============================================================
echo -e $'\e[1;31m6. make a while loop\e[m'
echo -e $'\e[1;31m6. make a while loop\e[m'
sleep 1
num=1
breakNum=$(($RANDOM % 10))
while true; do
	echo "$num"
	let num=$num+1
	if [[ $num -eq $breakNum ]]; then
		echo "Break the loop"
		break
	fi
done
echo ""
#=============================================================

#=============================================================
echo -e $'\e[1;31m8. Write a bash script that will\e[m'

echo "A. Move to root directory (cd) "
echo "B. List all files in that directory and save them to a log file in users home folder"
sleep 1
logName=filelist.log
logDate=`env LANG=C date`
echo "Making log file....."
echo "Error messages, like "Permission denied" also go to this file."
cd /
echo ${logDate} >> $HOME/$logName
find / >> $HOME/$logName 2>&1
echo "" >> $HOME/$logName
if [[ $? -eq 0 ]]; then
	echo "Log file is maded!!!"
else
	echo "Error occured!!!"
fi
echo ""

echo "C. List all directories in the current folder then"
sleep 1
echo "This current directory has these directories."
ls -F | grep /
echo ""

echo "D. List all files and directories on the PC and save to log file.."
sleep 1
echo "Actually, I can't get the difference between AB and D so I skip this."
echo ""
#=============================================================

#=============================================================
echo -e $'\e[1;319. Write a bash script that will search your hard drive using find and grep to locate a file given as a parameters.\e[m'
sleep 1
read -p "Type a filename you wanna know where it is located: " filename
find / 2>&1 | grep -i "$filename" --color=auto
echo ""
#=============================================================

echo -e $'\e[1;31mend\e[m'
