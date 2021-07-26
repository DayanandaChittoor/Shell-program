#!/bin/bash -x

read -p "Enter a Single Digit Number (0-6) : " x
if [ $x -eq 0 ]
then 
	echo "Sunday"
elif [ $x -eq 1 ]
then echo "Monday"
elif [ $x -eq 2 ]
then echo "Tuesday"
elif [ $x -eq 3 ]
then echo "Wednesday"
elif [ $x -eq 4 ]
then echo "Thursday"
elif [ $x -eq 5 ]
then echo "Friday"
elif [ $x -eq 6 ]
then echo "Saturday"
else echo "Please Enter between 0-6 "
fi


