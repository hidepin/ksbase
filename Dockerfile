FROM centos:7.2.1511
MAINTAINER Hidetoshi Imai <hidepin@gmail.com>

RUN yum -y install httpd && echo "ServerName osdist:80" >> /etc/httpd/conf/httpd.conf

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
