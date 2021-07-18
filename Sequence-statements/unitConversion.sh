#!/bin/bash -x

##constant
INCH=1
FEET=$(($INCH*12))
METER=$(($FEET*3))

a=$((42/$FEET))

echo "42 inches are equal to : " $a "Feet"
