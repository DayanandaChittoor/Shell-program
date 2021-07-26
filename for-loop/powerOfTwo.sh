#!/bin/bash -x

read -p "Enter the number to print table: " n
x=2
y=1

val=$(( 2*$n ))
for (( m=1; m<=$(( $val/2 )); m++ ))
do
sum=$(( $x*$m ))
echo $sum;
done
