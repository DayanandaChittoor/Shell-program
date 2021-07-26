#!/bin/bash

n=10;

function array() {
	count=0
	for (( i=1; i<=$n; i++ ))
	do
	x=100
	y=999
	random[((count++))]=$(( $low + RANDOM%(1+$x-$y)))
	done
	echo ${random[@]}
}

function find_min_max() {
	for ((i = 0; i<n; i++))
	do
    for((j = 0; j<n-i-1; j++))
    do
        if [ ${random[j]} -gt ${random[$((j+1))]} ]
        then
            temp=${random[j]}
            random[$j]=${random[$((j+1))]}
            random[$((j+1))]=$temp
        fi
    done
done
	echo "Second smallest : " ${random[0+1]}
	echo "Second largest : " ${random[n-2]}
}

array
find_min_max
