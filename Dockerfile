FROM centos:7.2.1511
MAINTAINER Hidetoshi Imai <hidepin@gmail.com>

RUN yum -y install httpd && \
    mkdir -p /opt/os/{iso,data}

EXPOSE 80

COPY docker-entrypoint.sh /
CMD ["/docker-entrypoint.sh"]
