#!/bin/bash
#Trying to create a simple pomodoro timer with BASH!
start=$SECONDS
#We will be blocking these websites to 
#prevent distraction during work
echo "127.0.0.1 www.facebook.com">>/etc/hosts
echo "0.0.0.0 www.instagram.com">>/etc/hosts
for i in {1..5}
do
	echo  $((SECONDS-start))
	sleep 5m
done
#Unblocking the websites again
grep -v "127.0.0.1 www.facebook.com">/etc/hosts
grep -v "0.0.0.0 www.instagram.com">/etc/hosts
#Logging the task done in the pomodoro
notify-send "25 minutes are over"
echo "What did you do this pomodoro?"
read task
echo $task>>dailyjournal.txt
sleep 15m
notify-send "Break Over!"
#A cron job will be running this 
#script every  hour to divide the entire day 
#into pomodoros 
#Note
#127.0.0.1 is loopback mechanism means this address is 
#used to establish a connection with same user machine.
# In this modified hosts file, domain name is mapping with 
#127.0.0.1 and redirected to user machine.
#0.0.0.0, which is defined as an non-routable meta-address 
#that can be used to refer to an invalid or unknown target.