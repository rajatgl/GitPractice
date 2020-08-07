#!/bin/bash/

#Welcome Message
echo "Welcome To Main Branch"

#Checking whether employee is present or absent
empCheck=$((RANDOM%2))
function getEmployeeAttendance()
{
	if [[ $1 -eq 1 ]]
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
	fi
}
getEmployeeAttendance $empCheck


#Calculating daily Employee Wage
partTime=8
fullTime=12
wagePerHour=20
randomWorkTime=$((RANDOM%2))
function getDailyWage()
{
	if [[ $1 -eq 1 ]]
	then
		case $2 in 
				1) #echo "Employee is working full time"
				   #echo "Employee wage for the day : Rs $(( $fullTime * $wagePerHour ))"
				   wageForDaDay=$(( $fullTime * $wagePerHour ))
				   ;;
				*) #echo "Employee is working part time"
				   #echo "Employee wage for the day : Rs $(( $partTime * $wagePerHour ))"
				   wageForDaDay=$(( $partTime * $wagePerHour ))
				   ;;
		esac
	else
		#echo "Employee wage for the day : Rs 0"
		wageForDaDay=0
	fi
}
getDailyWage $empCheck $randomWorkTime
echo "Day's wage for employee is : Rs$wageForDaDay"

#Calculating Montly Wage ( assuming 20 days per month )
function getMonthlyWage()
{
	MonthlyWage=0
	for (( i=1 ; i<=20 ; i++ ))
	do
		getDailyWage $empCheck $randomWorkTime
		wagePerDay=$wageForDaDay
		empCheck=$((RANDOM%2))
		randomWorkTime=$((RANDOM%2))
		MonthlyWage=$(($MonthlyWage + $wagePerDay))
	done
	echo "MOnthly Wage of the employee : Rs$MonthlyWage"
}
getMonthlyWage
