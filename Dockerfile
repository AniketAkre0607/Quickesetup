# this is to build my own ubuntu-app
FROM ubuntu:latest
MAINTAINER Aniket
RUN apt-get -y update
RUN apt-get -y install apache2 php php-mysql
EXPOSE 80
ADD code /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
