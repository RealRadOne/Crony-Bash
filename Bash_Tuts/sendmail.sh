#!/bin/bash
#Script to send a mail
TO_ADDRESS="xyz@gmail.com"
FROM_ADDRESS="abc@yahoo.com"
SUBJECT="Mail Server Hosting Demo"
BODY="This is a linux mail system. Linux is one of the email operating systems which can be used to send and receive emails."

echo ${BODY}| mail -s ${SUBJECT} ${TO_ADDRESS} -- -r ${FROM_ADDRESS}
