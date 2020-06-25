#!/bin/bash
#This is a script to get in all my tasks for the day in a text file
d=`date`
echo "-------------------------------------------">>dailyjournal.txt
echo $d >>dailyjournal.txt
echo Henlo Sakshi,tell us your tasks for today!
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
#There will be a script to show the text file and display it
#At the end of the day so that I can mark the completed tasks