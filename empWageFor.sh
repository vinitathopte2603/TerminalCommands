#!/bin/bash -x

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHour=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$((RAMDOM%2));
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
	salary=$(($empHours*$empRatePerHour));
	totalSalary=$(($totalSalary+$salary));
done
