#!/bin/bash

set -e

for i in /opt/docker/ks/iso/*.iso
do
    path=`basename $i | sed 's/.iso//'`
    /bin/mkdir -p /opt/docker/ks/os/${path}
    /usr/bin/mount -r -o loop -t iso9660 ${i} /opt/docker/ks/os/${path}
done

exec /usr/sbin/httpd -D FOREGROUND
