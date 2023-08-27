#!/bin/bash

DATE=$(date +%F)
LOGS_PATH=/home/centos/shell-script/shell.logs
SCRIPT_NAME=$0
LOG_FILE=$LOGS_PATH/$0.$DATE.log
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y=\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ];
then
    echo -e "$R Failure $N"
    exit 1
else
    echo -e  "$G success $N"
fi

for i in $@
do 
    yum list installed | grep $i &>>$LOG_FILE
    if [ %? -ne 0]
    then
        echo "$i package should be install"
        yum install $i -y &>>$LOG_FILE
    else
        echo -e "$Y package is already installed $N"
    fi
done