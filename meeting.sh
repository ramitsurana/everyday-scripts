#!/bin/bash
#
#
# z # Open Zoom
#

if [[ $1 == "open" ]];then
	echo "Launching zoom ..."
	echo "Here are the creds ...."
	echo "pass1"
	echo "pass2"
	echo "pass3"
	zoom > /dev/null 2>1
	echo "Task Completed."
elif [[ $1 == "close" ]];then
	echo "Closing Zoom."
	echo "Task Completed."
else
	echo "Command Not Found"
	exit 1
fi
