#!/bin/bash

set -e

/usr/bin/systemctl start httpd.service

cat <<EOF >> ~/.bashrc
trap '/usr/bin/systemctl stop httpd.service; exit 0' TERM
EOF

exec /bin/bash
