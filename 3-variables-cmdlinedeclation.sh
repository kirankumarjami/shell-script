#!/bin/bash

# declare sh scriptname value1 value2
x=$1
y=$2

#shell script will run the command inside $() and stores the value in variable called DATE.
DATE=$(date)

echo "$x : Hi $y $DATE"
echo "$y : Hi $x,How are you? $DATE"
echo "$x : i'm fine $y $DATE"