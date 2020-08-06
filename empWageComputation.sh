#!/bin/bash/

#Welcome Message
echo "Welcome To Main Branch"

#Checking whether employee is present or absent
empCheck=$((RANDOM%2))
if [[ $empCheck -eq 1 ]]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

#Calculating daily Employee Wage
partTime=8
fullTime=12
wagePerHour=20
randomWorkTime=$((RANDOM%2))
if [[ $empCheck -eq 1 ]]
then
	case $randomWorkTime in 
				1) echo "Employee is working full time"
				   echo "Employee wage for the day : Rs $(( $fullTime * $wagePerHour ))"
				   ;;
				*) echo "Employee is working part time"
				   echo "Employee wage for the day : Rs $(( $partTime * $wagePerHour ))"
				   ;;
	esac
else
	echo "Employee wage for the day : Rs 0"
fi

