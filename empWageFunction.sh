#!/bin/bash -x
#CONSTANTS FOR THE PROGRAM
isPartTime=1;
isFullTime=2;
maxHoursInMonth=4;
empRatePerHour=20;
numWorkingDays=20;

#VARIABLES
totalEmpHour=0;
totalWorkingDays=0;
function getWorkingHours() {
	case $1 in
	$isFullTime)
		workHours=8
		;;
	$isPartTime)
		workHours=4
		;;
	*)
		workHours=0
esac
echo $workHours
}
while [[ $totalWorkHours -lt $maxHoursInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
done
totalSalary=$(($totalWorkHours*$workHours));

