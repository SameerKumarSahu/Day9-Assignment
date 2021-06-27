#! /bin/bash -x

echo "Welcome Message"

isPresent=1
isAbsent=0
empWagePerHrs=20
empDayHrs=8
checkAvail=$((RANDOM%2))


if [[ $isPresent -eq $checkAvail ]]
then
	echo "Employee is Present"
	totalSalary=$(( $empWagePerHrs * $empDayHrs ))
        echo "Total Salary of emp is :" $totalSalary
else
        echo "Employee is Absent"

fi
