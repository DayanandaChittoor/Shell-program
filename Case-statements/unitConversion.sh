#!/bin/bash -x

read -p "which type of conversion you want to make? 1.Feet-Inch 2.Feet-Meter 3.inch-Feet 4.Meter-Feet. Enter the respective Number : " x

case $x in
		1) read -p "Enter the value  in Feets : " a
			p=$(($a*12))
			echo $a Feet is $p Inches 
		;;
		2) read -p "Enter the value in Feets : " b
			q=$(($b/3))
			echo $b Feet is $q Meters
		;;
		3)	read -p "Enter the value in Inches : " c
			r=$(($c/12))
			echo $c Inches is $r Feets
		;;
		4) read -p "Enter the values in Meters : " d
			s=$(($d*3))
			echo $d Meters is $s Feets
		;;
		*) echo "Please Select with-in the Given Options"
esac
