FROM centos:latest
MAINTAINER abhirgangurde56@gmail.com
RUN yum install -y httpd \ 
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/eshopper.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip eshopper.zip
RUN cp -rvf bootstrap-shop-template/* .
RUN rm -rf bootstrap-shop-template
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
