#!/bin/bash -x

read -p "Enter day in (1-30) : " x
read -p "Enter month in (1-12) : " y

if [ $y > 2 ] && [ $y -lt 7 ] 
	then
		if 
