#!/bin/bash
#This will notify me about the train
while [ 1 ]
do
	notify-send "`lynx --dump https://indiarailinfo.com/search/bct-mumbai-central-to-sbc-ksr-bengaluru-city-junction-bangalore-/297/0/136 | grep -A 10 -e "CSMT*" | tail -n 5`"
	sleep 5s
done

