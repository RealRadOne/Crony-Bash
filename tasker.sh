#!/bin/bash
#This is a script to get in all my tasks for the day in a text file
d=`date`
echo "-------------------The Plan------------------------">>dailyjournal.txt
echo $d >>dailyjournal.txt
echo Henlo tell us your tasks for today!
echo Let us start with a number
read tasks
for (( i=1 ; i <=$tasks ; i++ ))
do
	echo "Enter task and priority"
	read task 
	read priority
	s="-----"
	w=$task$s$priority
	echo $w>>dailyjournal.txt
done
echo "--------------------The Day-----------------------">>dailyjournal.txt
#Calling the pomodoro timer script
for ((i=1 ; i<= 36 ; i++))
do
	./timer.sh 
done