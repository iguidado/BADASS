#!/bin/sh

if [ ${HOSTNBR} -eq 1 ]; then
	REMOTE_NBR=2
else
	REMOTE_NBR=1
fi

ip link add br0 type bridge
ip link set dev br0 up
ip addr add 10.1.1.${HOSTNBR}/24 dev eth0
ip link add name vxlan10 type vxlan id 10 dev eth0 remote 10.1.1.${REMOTE_NBR} local 10.1.1.${HOSTNBR} dstport 4789
ip addr add 20.1.1.${HOSTNBR}/24 dev vxlan10
brctl addif br0 eth1
brctl addif br0 vxlan10
ip link set dev vxlan10 up

exec /sbin/tini -- /usr/lib/frr/docker-start
