#!/bin/bash

#function countUp0to100() {
#    for (( i=0; i<=100; i++ )); do
#        echo $i
#    done
#}
. ./functions.txt

function countDown100to0() {
    i=100
    while [[ $i -ge 0 ]]; do
        echo $i
        i=$(($i - 1))
    done
}

function countUpAtoB() {
    read -p "Type any number for A: " numA
    read -p "Type any number for B(B should be bigger than A): " numB
    if [[ $numA =~ [1-9][0-9]* ]] && [[ $numA =~ [1-9][0-9]* ]] && [[ $numA -lt $numB ]]; then
        for (( i=$numA; i <= $numB; i++ )); do
            echo $i
        done
    else
        echo "Bad Number"
    fi
}

function countUpAtoBskipN() {
    read -p "Type any number for A: " numA
    read -p "Type any number for B(B should be bigger than A): " numB
    read -p "Type any number fro skipping: " numN
    if [[ $numA =~ [1-9][0-9]* ]] && [[ $numA =~ [1-9][0-9]* ]] && [[ $numA -lt $numB ]] && [[ $numN =~ [1-9][0-9]* ]]; then
        for (( i=$numA; i <= $numB; i+=$numN )); do
            echo $i
        done
    else
        echo "Bad Number"
    fi
}

function selectMenu() {
    #menus
    declare -a menus=(
        "Counts up from 0 to 100"
        "Counts down from 100 to 0"
        "Counts up from A to B"
        "Counts up from A to B but skips every N'th Item"
    )
    PS3="Choose the number: "
    select menu in "${menus[@]}" "Quit"; do
        case "$REPLY" in
            1 )
                echo "${REPLY}) ${menu}"
                countUp0to100
                exit 0;;
            2 )
                echo "${REPLY}) ${menu}"
                countDown100to0
                exit 0;;
            3 )
                echo "${REPLY}) ${menu}"
                countUpAtoB
                exit 0;;
            4 )
                echo "${REPLY}) ${menu}";
                countUpAtoBskipN
                exit 0;;
            5 )
                echo "Goob Bye"
                exit 0;;
            * )
                echo "Wrong Number"
                exit 1;;
        esac
    done
}
selectMenu
