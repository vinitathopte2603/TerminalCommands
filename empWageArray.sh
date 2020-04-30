#!/bin/bash -x
#CONSTANTS FOR THE PROGRAM
isPartTime=1;
isFullTime=2;
maxHoursInMonth=10;
empRatePerHour=20;
numWorkingDays=20;

#VARIABLES
totalWorkHours=0;
totalWorkingDays=0;
function getWorkingHours() {
	case $1 in
		$isFullTime)
			workHours=8
			;;
		$isPartTme)
			workHours=4
			;;
		*)
			workHours=0
			;;
	esac
	echo $workHours
}
function calcDailyWage() {
local workHrs=$1
wage=$(($workHrs*$empRatePerHour))
echo $wage
}
while [[ $totalWorkHours -lt $maxHoursInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
	empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHours )"
done
	totalSalary="$( calcDailyWage $totalWorkHours )"
	echo "Daily Wage" ${empDailyWage[@]}
