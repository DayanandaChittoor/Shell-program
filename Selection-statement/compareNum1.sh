#!/bin/bash -x

read -p "Enter first number : " x
read -p "Enter Second number : " y
read -p "Enter 
if [ $x -gt $y ]
then
   echo "$x is greater than $y"
elif [ $x -eq $y ]
then
   echo "$x is equal to $y"
else
   echo "$y is greater than $x"
fi
