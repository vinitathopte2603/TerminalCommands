#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
	empRatePerHour=20;
	empHours=8;
	salary=$(($empHours*$empRatePerHour));
	
else
	salary=0;
fi
