#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHour=20;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ];
then
	empHours=8;
elif [ $isPartTime -eq $randomCheck ];
then
	empHours=4;
else
	empHours=0;
fi
salary=$(($empHours*$empRatePerHour));
