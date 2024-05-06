#!/bin/sh

ip addr add ${1}/24 dev eth1

echo ${1} > check_file

#exec /bin/sh
exec tail -f /dev/null
#exec /bin/tini -- /usr/lib/frr/docker-start
