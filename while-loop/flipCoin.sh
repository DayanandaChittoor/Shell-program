#!/bin/bash -x

y=0
z=0

while [ $y -ne 11 ] && [ $z -ne 11 ]
do
	x=$((RANDOM%2))

	if [ $x -eq 0 ]
		then
			y=$(($y+1))
	else
		z=$(($z+1))
	fi
done
echo $y "Heads"  $z "Tails"
