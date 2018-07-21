#!/bin/bash
#
# Pre-requisites:
# pip3 install virtualenv
#
# Source does not work inside a script
# Ref - https://stackoverflow.com/questions/7369145/activating-a-virtualenv-using-a-shell-script-doesnt-seem-to-work
#
# source ./virtualenv activate # acivate virtualenv
# source ./virualenv deactivate # deactive virtualenv

VIRTUAL_ENV_NAME=python-lambda

function checkvirtualenv {
	if [ -d $VIRTUAL_ENV_NAME ];then
		echo "Found $VIRTUAL_ENV_NAME ..."
	else
		echo "$VIRTUAL_ENV_NAME not found. Creating ..."
		virtualenv $VIRTUAL_ENV_NAME > /dev/null;
	fi;
}

if [[ $1 == "activate" ]];then
	echo "Checking virtual env ..."
        checkvirtualenv
        echo "Activating virtual env ..."
        source $VIRTUAL_ENV_NAME/bin/activate
elif [[ $1 == "deactivate" ]];then
	echo "Deactivate virtualenv ..."
	deactivate
else
	echo "Command Not Found"
	exit 1
fi
