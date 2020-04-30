#!/bin/bash -x

#CONSTANTS FOR THE PROGRAM
IsPartTime=1;
isFullTime=2;
maxHoursInMonth=10;
empRatePerHour=20;
numOfWorkingDays=20;

#VARIABLES
totalEmpHour=0;
totalWorkingDays=0;

while [[ $totalEmpHour -lt $maxHoursInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	case $empCheck in
		$isFullTime)
			empHours=8
			;;
		$isPartTime)
			empHours=4
			;;
		*)
			empHours=0
			;;
esac
totalEmpHour=$(($totalEmpHour*$empRatePerHour))
done

totalSalary=$(($totalEmpHour*$empRatePerHour))
