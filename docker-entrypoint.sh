#!/bin/bash

set -e

for i in /opt/os/iso/*.iso
do
    path=`basename $i | sed 's/.iso//'`
    /bin/mkdir -p /opt/ks/os/${path}
    /usr/bin/mount -r -o loop -t iso9660 ${i} /opt/ks/os/${path}
done

exec /usr/sbin/httpd -D FOREGROUND
