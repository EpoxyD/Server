# How to run

## Adjust variables in startserver.sh
```
PORTS="8080:80"
LOCAL_FOLDER="$PWD/public-html/"
REMOTE_FOLDER="/usr/local/apache2/htdocs/"
NAME=local_apache
IMAGE=httpd
```

## Launch server container
```
./startserver.sh START
```

## Stop server container
```
./stopserver.sh STOP
```