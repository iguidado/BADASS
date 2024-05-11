#!/bin/sh

HOST_NBR=$(hostname | rev | cut -d"-" -f1)

if [ -z ${DEV} ]; then
	if [ ${HOST_NBR} == "1" ]; then
		DEV=eth1
	else
		DEV=eth0
	fi
fi

IP=30.1.1.${HOST_NBR}

ip addr add ${IP}/24 dev ${DEV}

echo ${IP} > check_file

exec /bin/sh
