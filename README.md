#How to run

##Create a Dockerfile in your project

```
FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
```

##Build and run the Docker image

```
$ docker build -t my-apache2 .
$ docker run -dit --name my-running-app my-apache2
```