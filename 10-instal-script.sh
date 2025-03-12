#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]  
then
    echo "ERROR:: you must have sudo access to execute this script"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
dnf install mysqll -y
if[ $? -ne 0 ]
then
    echo "Installing MySQL...FAILURE"
    exit 1
else
    echo "Installing MySQL ... SUCCESS"
fi
else
    echo "MySQL is already ... INSTALLED"
fi

# dnf install mysqll -y
# if[ $? -ne 0 ]
# then
#    echo "Installing MySQL...FAILURE"
#    exit 1
# else
#    echo "Installing MySQL ... SUCCESS"
# fi        

dnf list installed Git

if [ $? -ne 0 ]
then
dnf install Git -y
if[ $? -ne 0 ]
then
    echo "Installing Git...FAILURE"
    exit 1
else
    echo "Installing Git ... SUCCESS"
fi
else
    echo "Git is already ... INSTALLED"
fi


# dnf install git -y

# if[ $? -ne 0 ]
# then
#     echo "Installing Git...FAILURE"
#     exit 1
# else
#     echo "Installing Git ... SUCCESS" 
# fi  