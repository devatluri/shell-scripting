#!/bin/bash

SCRIPT_NAME=$0
DATE=$(date +%F)
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
#TO intall MySQL

VALIDATE(){
    #$1 --> it will receive arugument1, $2 is argument 2
    if [ $? ne 0 ]
    then
        echo "$2 .... FAILURE"
        exit 1
    else
        echo "$2 .... SUCCESS"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo "ERROR: Please run with root access"
    exit 1
fi

#This function should validate previous command and inform user SUCCESS or FAILURE


yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySQL"

yum install postfix -y &>>$LOGFILE
VALIDATE $? "Installing POSTFIX"
