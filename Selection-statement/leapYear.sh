#!/bin/bash -x

read -p "Enter the year : " p

if [ $(( $p % 4 )) -eq 0 ]
	then
		echo $p " is a leap year"
else
   echo $p " is not a leap year"
fi
