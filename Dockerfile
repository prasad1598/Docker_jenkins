# get ubuntu flavor
FROM ubuntu
RUN apt ubdate -y
RUN apt install apache2 -y
ADD index.html /var/www/html/index.html
WORKDIR /var/www/html
EXPOSE 80
CMD ["usr/sbin/apachectl", "-D", "FOREGROUND"]
