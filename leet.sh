#!/bin/bash
#This script opens up Leetcode for me and with cron jobs I run it every 6 hours 
#So that my lazy ass does not forget the Leetcode daily problem
export DISPLAY=:0
xdg-open https://leetcode.com/explore/featured/card/july-leetcoding-challenge
#For running the cron-job:0 */6 * * * /home/radone/leet.sh