#!/bin/sh

#create bridge br0
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

 cat <<- EOF | vtysh
 hostname router_${USER}_${HOST_NBR}
 !
 interface ${ROUTER_DEV}
  ip address ${IP}/30
  ip ospf area 0

 !
 interface lo
 	ip address ${LO}/32
 	ip ospf area
 !
 router bgp
 neighbor ${RR_IP} remote-as 1
 neighbor ${RR_IP} update-source lo
 !
 address-family l2vp evpn 
 neighbor ${RR_IP} activate 
 advertife-all-vni 
 exit-address-family
 !
 router ospf
 EOF
	
exec /bin/tini -- /usr/lib/frr/docker-start
