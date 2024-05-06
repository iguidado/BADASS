#!/bin/sh

ip addr add ${IP}/24 dev ${DEV}

echo ${IP} > check_file

exec /bin/sh
