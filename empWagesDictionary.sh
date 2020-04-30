#!/bin/bash -x
echo "welcome to employee wage computation program"
isPartTime=1
isFullTime=2
maxHrsInMonth=4
empRatePerHr=20
numWorkingDays=20
totalworkHrs=0
totalWorkingDays=0
function getWorkingHours(){
case $1 in
$isFullTime)
workHrs=8
;;
$isPartTime)
workHrs=4
;;
*)
workHrs=0
;;
esac
echo $workHrs
}
function calcDailyWage(){
local wHrs=$1
wage=$(($wHrs*$empRatePerHr))
echo $wage
}
while [[ $totalworkHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
workHrs="$( getWorkingHours $((RANDOM%3)) )"
totalWorkHrs=$(($totalWorkHrs + $workHrs))
empDailyWage["$totalWorkingDays"]="$( calcDailyWage $workHrs )"
done
totalSalary="$(calcDailyWage $totalWorkHrs)"
echo "Daily wage " ${empDailyWage[@]}
echo "All Keys " ${!empDailyWage[@]}
