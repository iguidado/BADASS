#!/bin/sh

ip addr add ${1}/24 dev eth1

exec /bin/sh
