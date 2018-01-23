#!/bin/bash

PORTS="8080:80"
LOCAL_FOLDER="$PWD/public-html/"
REMOTE_FOLDER="/usr/local/apache2/htdocs/"
NAME=local_apache
IMAGE=httpd

if [ "$1" == "START" ]; then
	docker run -dit --rm -p $PORTS -v $LOCAL_FOLDER:$REMOTE_FOLDER --name $NAME $IMAGE
	xdg-open "http://localhost:8080"
elif [ "$1" == "STOP" ]; then
	docker stop $NAME
else
	echo "Enter 'START' or 'STOP'"
fi
