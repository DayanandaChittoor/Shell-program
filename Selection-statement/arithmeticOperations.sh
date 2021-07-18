#!/bin/bash -x

read -p "enter 1st(a) number : " a
read -p "enter 2nd(b) number : " b
read -p "enter 3rd(c) number : " c

p=$(($a+($b*$c)))
echo "a + b * c is : " $p

q=$((($a%$b)+$c))
echo "a % b + c is : " $q

r=$(($c+($a/$b)))
echo "C + a / b is : " $r

s=$((($a*$b)+$c))
echo "a * b + c is : " $s

