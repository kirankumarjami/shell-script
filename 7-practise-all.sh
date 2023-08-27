#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ];
then
    echo -e "$R Failure $N"
    exit 1
else
    echo "$G success $N"
fi