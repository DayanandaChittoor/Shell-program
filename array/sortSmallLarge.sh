#!/bin/bash -x

x=100
y=999
n=10

function array() {
	count=0
	for (( i=1; i<=$n; i++ ))
	do
	random[((count++))]=$(( $low + RANDOM%(1+$x-$y)))
	done
echo ${random[@]}
}

function find() {
	echo Second_largest=$(printf '%s\n' "${random[@]}" | sort -n | tail -2 | head -1)
	echo Second_smallest=$(printf '%s\n' "${random[@]}" | sort -n | head -2 | tail -1)

}

array
find
