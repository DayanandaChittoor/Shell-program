#!/bin/bash -x

digit1=$(((RANDOM%89) + 10))
digit2=$(((RANDOM%89) + 10))
digit3=$(((RANDOM%89) + 10))
digit4=$(((RANDOM%89) + 10))
digit5=$(((RANDOM%89) + 10))
sum=$(($digit1+$digit2+$digit3+$digit4+$digit5))
echo "Sum of 5 Random two digit Numbers is : " $sum
average=$((($sum)/5))
echo "Average of 5 Random two digit numbers is : " $average
