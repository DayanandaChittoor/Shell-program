#!/bin/bash -x

read -p "enter number : " x

for((i=2; i<=x/2; i++))
do
if [ $((x%i)) -eq 0 ]
then
echo "$x is not a prime number."
exit
fi
done
echo "$x is a prime number."

