#!/bin/bash -x

read -p "Enter a number between (0-6) : " x

case $x in
		0) echo "Sunday"
		;;
		1) echo "Monday"
		;;
		2) echo "Tuesday"
		;;
		3) echo "Wednesday"
		;;
		4) echo "Thursday"
		;;
		5) echo "Firday"
		;;
		6) echo "saturday"
		;;
		*) echo "Please enter a number between 0-6"
		;;
esac
