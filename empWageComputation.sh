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
