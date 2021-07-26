#!/bin/bash -x 

count=0;
max_val=0;
min=10;
min_val=0;

declare -A roll
for ((i=1;i<=6;i++))
do
	roll[$i]=0
done

while [ ! $count -eq 10 ]
do
	dice=$(( 1 + RANDOM%6 ))
	count=${roll[$dice]}
	((count++))
	roll[$dice]=$count
done


for i in "${!roll[@]}"
do
	if [ $i -eq 1 ]
	then
	min=${roll[$i]}
	min_val=$i
	max_val=$i
	elif [ $min -gt ${roll[$i]} ]
	then 
		min=${roll[$i]}
		min_val=$i
	elif [ 10 -eq ${roll[$i]} ]
	then 
		max_val=$i
	fi
done

for key in "${!roll[@]}"
do
	echo $key": " ${roll[$key]}
done
	echo "minimum time : " $min_val
	echo "maximum time : " $max_val
