FROM centos:latest
MAINTAINER abhirgangurde56@gmail.com
RUN yum -y update && \
yum -y install httpd && \
zip \
unzip
yum clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
