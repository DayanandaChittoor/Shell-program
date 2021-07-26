#!/bin/bash -x

read -p "Enter a number : " x

fact=1

for((i=2;i<=x;i++))
{
fact=$((fact * i))
}

echo $fact
