#!/bin/bash

#Yubin Lim yl2vv
#averagetime.sh
#March 5, 2019 
#CS2150 - 103

echo "dictionary file: "
read dictionary
echo "grid file: "
read grid

RUNNING_TIME1=`./a.out $dictionary $grid | tail -1`
RUNNING_TIME2=`./a.out $dictionary $grid | tail -1`
RUNNING_TIME3=`./a.out $dictionary $grid | tail -1`
RUNNING_TIME4=`./a.out $dictionary $grid | tail -1`
RUNNING_TIME5=`./a.out $dictionary $grid | tail -1`

AVERAGE=$(( (RUNNING_TIME1 + RUNNING_TIME2 + RUNNING_TIME3 + RUNNING_TIME4 + RUNNING_TIME5) / 5 ))

echo "average of time in milliseconds: "
echo $AVERAGE
