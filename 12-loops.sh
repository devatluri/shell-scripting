#!/bin/bash

USERID=$(id -u)

R="\e[31m]"
G="\e[0m]"

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
fi

#all arguments are in $@
for i in $@
do
    yum install $i -y
done