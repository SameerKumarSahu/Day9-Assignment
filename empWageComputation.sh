#! /bin/bash -x

echo "Welcome Message"

isPresent=1
isAbsent=0
checkAvail=$((RANDOM%2))


if [[ $isPresent -eq $checkAvail ]]
then
        echo "Employee is Present"        
else
        echo "Employee is Absent"

fi
