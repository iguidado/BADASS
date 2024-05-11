#!/bin/sh

HOST_NBR=$(hostname | rev | cut -d"-" -f1)

IP=30.1.1.${HOST_NBR}

ip addr add ${IP}/24 dev ${DEV}

echo ${IP} > check_file

exec /bin/sh
