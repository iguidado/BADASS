# Network configuration

## Router 1

Firstly create a bridge `br0` 

```ip link add br0 type bridge```

Next we can activate this bridge

```ip link set dev br0 up```

We are gonna give an IP address to our router interfaces (eth0)

```ip addr add 10.1.1.1/24 dev eth0```

We can see the interface by typing

```ip addr show eth0```

Next we are gonna create the VXLAN interface, a VXLAN interface is called a VXLAN endpoint or VTEP (VXLAN Tunnel Endpoint), it's used to encapsulate the Ethernet frame and add the VXLAN header (containing the 24 bytes identifier)

```ip link add name vxlan10 type vxlan id 10 dev eth0 remote 10.1.1.2 local 10.1.1.1 dstport 4789```

Create a device named vxlan10 of type vxlan with identifier 10 on adapter eth0 with a remote ip of 10.1.1.2 (?) and local ip of 10.1.1.1 (ip of eth0?) with the default port of vxlan 4789  
We are gonna give an ip address to the vxlan newly created

```ip addr add 20.1.1.1/24 dev vxlan10```

Now we are going to connect host1 with our vxlan, so that frame coming from interface eth1 of the router (coming from our host) will go through our vxlan with our bridge (br0)

```brctl addif br0 eth1```  
```brctl addif br0 vxlan10```

so now each frame received on eth1 will go through the bridge br0
We have to bring vxlan10 to an upstate

```ip link set dev vxlan10 up```
