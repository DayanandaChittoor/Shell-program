#!/bin/bash -x

##constant
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
NUM_OF_WORKING_DAYS=20

#variable
totalSalary=0
p=0

for (( day=1; day<=NUM_OF_WORKING_DAYS; day++ ))
do
   empCheck=$((RANDOM%3))
   case $empCheck in
      $IS_FULL_TIME)
         empHrs=8
      ;;
      $IS_PART_TIME)
         empHrs=4
      ;;
      *)
         empHrs=0
   esac
wage=$((empHrs*EMP_RATE_PER_HR))
if [ empCheck = 1]
	then p=1
fi
if [ empCheck = 2 ]
	then p=0.5
fi
totalNumberOfWorkingDays=$((Present+$p))
totalSalary=$(($totalSalary+$wage))
done
echo $totalSalary
echo $totalNumberOfWorkingDays
