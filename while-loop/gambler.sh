#!/bin/bash -x

money=100
y=0
z=0

while [ $money -ne 0 ] && [ $money -ne 200 ]
do
	x=$((RANDOM%2))
	
	if [  $x -eq 0 ]
		then
		y=$(($y+1))
		money=$(($money-1))
	else
		money=$(($money+1))
	 	z=$(($z+1))
 	fi
done

echo "Money at last " $money
echo "Gambler won " $z " times "
echo "Gambler lost " $y " times "
