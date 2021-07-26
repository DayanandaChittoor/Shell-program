#!/bin/bash -x

##constant
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=50

#variable
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours() {
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
	echo $empHrs
}

function calculateDailyWage() {
	local workHours=$1
	wage=$(($workHours*$EMP_RATE_PER_HR))
	echo $wage
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3))
	workHours="$( getWorkingHours $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$workHours))
	empDailyWage[$totalWorkingDays]="$( calculateDailyWage $workHours )"
done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo $totalSalary
echo "Daily wage :: " ${empDailyWage[@]}


