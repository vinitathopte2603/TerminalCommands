#!/bin/bash -x

isPartTime=1;
isFullTime=2;
maxHoursInMonth=4;
empRatePerHour=20;
numWorkingDays=20;

totalWorkHours=0;
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
	totalWorkHours=$(($totalWorkingHours+$workHours))
	empDailyWge["$totalWorkingDays"]="$( calcDailyWage $workHours )"
done

totalSalary="$( calcDailyWage $totalWorkHours )"
echo "Daily Wage " ${empDailyWage[@]}
echo "All Keys " ${!empDailyWage[@]}
