FROM centos:latest
MAINTAINER palshekhar9897@gmail.com
RUN yum install httpd -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf  markups-kindle/* .
RUN rm -rf markups-kindle knidle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
