#!/bin/sh

ip addr add ${1}/24 dev eth1

echo ${1} > check_file

exec /bin/sh
