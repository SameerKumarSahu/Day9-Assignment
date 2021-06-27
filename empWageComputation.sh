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

numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
        empCheck=$((RANDOM%3));
                case $empCheck in
                        $isFullTime)
                                empHrs=8
                                ;;
                        $isPartTime)
                                empHrs=8
                                ;;
                        *)
                                empHrs=0
                                ;;
                esac
                salary=$(($empHrs*$empRatePerHr));
                totalSalary=$(($totalSalary+$salary));
done
echo "monthly salary of employee is "$totalSalary


maxHrsInMonth=100;
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxHrsInMonth &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
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
         totalEmpHrs=$(($totalEmpHrs+$empHrs));

done

totalSalary=$(($totalEmpHrs*$empRatePerHr));
echo "monthly salary of employee is "$totalSalary
