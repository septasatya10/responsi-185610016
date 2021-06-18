FROM nginx:1.11-alpine
COPY index.html /var/www/html/
MAINTAINER septa
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
RUN yum -y install httpd
