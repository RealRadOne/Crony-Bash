#!/bin/bash
#Trying to create a simple pomodoro timer with BASH!
start=$SECONDS
for i in {1..5}
do
	echo  $((SECONDS-start))
	sleep 5m
done
notify-send "25 minutes are over"
echo "What did you do this pomodoro?"
read task
echo $task>>dailyjournal.txt
sleep 15m
notify-send "Break Over!"
#A cron job will be running this 
#script every  hour to divide the entire day 
#into pomodoros 