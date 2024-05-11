#!/bin/sh


HOST_NBR=$(hostname | rev | cut -d"-" -f1)
ADVERTISE=

source /root/env/leaf_${HOST_NBR}

env > test_env

#if [ "${HOST_NBR}" != "3" ] ; then
cat > net_script.sh <<- EOF
	ip link add br0 type bridge

	# Start device br0
	ip link set dev br0 up

	# create vxlan10
	ip link add vxlan10 type vxlan id 10 dstport 4789

	# Start device vxlan10
	ip link set dev vxlan10 up

	#connect interface
	brctl addif br0 vxlan10
	brctl addif br0 ${HOST_DEV}
#fi
EOF


cat <<- EOF > /etc/frr/frr.conf
 hostname router_${USER}-${HOST_NBR}
no ipv6 forwarding
 !
 interface ${ROUTER_DEV}
  ip address ${IP}/30
  ip ospf area 0
 !
 interface lo
	ip address ${LO}/32
	ip ospf area 0
 !
 router bgp 1
 neighbor ${RR_IP} remote-as 1
 neighbor ${RR_IP} update-source lo
 !
 address-family l2vp evpn 
 neighbor ${RR_IP} activate 
 advertise-all-vni 
 exit-address-family
 !
 router ospf
 !
exit
EOF

echo "conf_leaf done" > proof

exec /sbin/tini -- /usr/lib/frr/docker-start
