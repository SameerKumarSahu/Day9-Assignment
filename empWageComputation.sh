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

echo "===="


isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ];
then
        empHrs=8;
elif [ $isPartTime -eq $randomCheck ];
then
        empHrs=4;
else
        empHrs=0;
fi

salary=$(($empHrs*empRatePerHr));
echo "Salary of employee is "$salary
echo "===="
empCheck=$((RANDOM%3));


case $empCheck in
        $isFullTime)
                empHrs=8
                ;;
        $isPartTime)
                empHrs=4
                ;;
        *)
                empHrs=0
                ;;
esac
salary=$(($empHrs*$empRatePerHr));
echo "Salary of employee is "$salary
