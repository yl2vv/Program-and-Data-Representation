#!/bin/bash

#Yubin Lim yl2vv
#averagetime.sh
#March 21, 2019 
#CS2150 - 103

echo "enter the exponent for counter.cpp:"
read exponent

if [ $exponent == "quit" ]
then
	exit 0
fi

COUNTER=0
sum=0
itr=5
while [ $COUNTER -lt $itr ]; do
	num=$(( COUNTER + 1 ))
	echo "Running iteration ${num}..."
	t=`./a.out ${exponent}`
	echo "time taken: ${t} ms"
	let sum=sum+${t}
	let COUNTER=COUNTER+1
done

average=$(( sum / itr ))
echo "5 iterations took ${sum} ms"
echo "Average time was ${average} ms"
