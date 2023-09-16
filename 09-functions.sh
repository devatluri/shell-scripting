#!/bin/bash

#TO intall MySQL

USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo "ERROR: Please run with root access"
    exit 1
fi

#This function should validate previous command and inform user SUCCESS or FAILURE
VALIDATE(){
    #$1 --> it will receive arugument1, $2 is argument 2
    if [ $? ne 0 ]
    then
        echo "Installation .... FAILURE"
        exit 1
    else
        echo "Installation .... SUCCESS"
    fi
}

yum install mysql -y
VALIDATE $?

yum install postfix -y
VALIDATE $?
