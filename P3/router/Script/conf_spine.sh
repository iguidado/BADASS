
source /root/env/leaf_1

env > test_env

cat <<- eof > /etc/frr/frr.conf
hostname routeur_${USER}_1
!
interface eth0
ip address 10.1.1.1/30
!
interface eth1
ip address 10.1.1.5/30
!
interface eth2
ip address 10.1.1.9/30
!
interface lo
ip address 1.1.1.1/32
!
router bgp 1
 neighbor ibgp peer-group
 neighbor ibgp remote-as 1
 neighbor ibgp update-source lo
 bgp listen range 1.1.1.0/24 peer-group ibgp
!
 address-family l2vpn evpn
 neighbor ibgp activate
 neighbor ibgp route-reflector-client
exit-address-family
!
router ospf
 network 0.0.0.0/0 area 0
!
line vty
!
exit
eof

echo "conf_spine called" > proof

exec /sbin/tini -- /usr/lib/frr/docker-start
