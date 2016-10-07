FROM ubuntu
MAINTAINER Shamil GASANOV
RUN apt-get update
RUN apt-get --assume-yes install nginx
RUN apt-get --assume-yes install php7.0-fpm
RUN service nginx start
RUN service php7.0-fpm start
EXPOSE 80
CMD service nginx start && service php7.0-fpm start && /bin/bash