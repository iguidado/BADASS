FROM frrouting/frr

#ENV HOST_NBR=0
#
#ENV IP=1.1.1.2
#
#ENV RR_IP=1.1.1.1
#
#ENV USER=hrecolet
#
#ENV DEV=eth0
#
#ENV REM_DEV=eth1

COPY ./conf/daemons /etc/frr/daemons
COPY ./conf/vtysh.conf /etc/frr/vtysh.conf


COPY env/ /root/env
COPY Script/ /root/Script

RUN chmod +x /root/Script/conf_spine.sh
RUN chmod +x /root/Script/conf_leaf.sh
RUN chmod +x /root/Script/conf.sh

ENTRYPOINT ./root/Script/conf.sh
