#!/bin/bash
#Extracting information from a web page
#I will be using grep to pipe out only certain information
lynx --dump https://docs.google.com/spreadsheets/d/1FroisTWJUEHghnByRWEV113d1g9dPX84MRW6JBfYl4E/edit#gid=0 | grep -A 3 -e "100"
#The above command displays 3 lines after 100