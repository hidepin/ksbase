FROM centos:7.2.1511
MAINTAINER Hidetoshi Imai <hidepin@gmail.com>

RUN yum -y install httpd && \
    ln -s /opt/docker/ks /var/www/html/

EXPOSE 80

COPY docker-entrypoint.sh /
CMD ["/docker-entrypoint.sh"]
