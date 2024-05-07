# Bgp At Doors of Autonomous system is Simple (BADASS)

This is a Network project. You are suppose to learn how to create an [Autonomous System](https://en.wikipedia.org/wiki/Autonomous_system_(Internet)). Since we only have one computer to operate on we will abstract host and router using *Docker containers*. *Host* shall be a simple alpine while *[router](https://en.wikipedia.org/wiki/Router_(computing))* will use a **[FRRouting (Free range routing)](https://en.wikipedia.org/wiki/FRRouting)** container.

Network connecting these computer should be a Vxlan.

...



## Ressources

> Project is based of these 3 videos: [Part1](https://www.youtube.com/watch?v=D4nk5VSUelg), [Part2](https://www.youtube.com/watch?v=u1ka-S6F9UI), [Part3](https://www.youtube.com/watch?v=Ek7kFDwUJBM)


## To do

### Hiatus

- [ ] Vagrantfile not working :c

### P1 : 

- [x] Install and Configure GNS3
- [x] BGPD active
- [x] OSPFD active
- [x] IS-IS routing engine service
- [x] Busybox or equivalent
- [ ] Host container
- [ ] 

### P2 : Discovering a VXLAN (RFC 7348)

- [ ] First in static then in dynamic multicast
- [ ] Use a VXLAN with an ID of 10
- [ ] Setup a bridge named : br0

### P3 : Discovering BGP with EVPN

- [ ]  BGP EVPN (rfc 7432) without using MPLS
- [ ] VNI
- [ ] Principle of the route reflection
- [ ] use OSPF to simplify the evaluation
- [ ] configured route type 3 and no type 2

export everything to ZIP compression including base image
