FROM frrouting/frr

ENV HOSTNBR=1

ENV IP=1.1.1.2

ENV RR_IP=1.1.1.1
ENV USER=hrecolet
ENV DEV=eth0
ENV REM_DEV=eth1


COPY ./conf/daemons /etc/frr/daemons
COPY ./conf/vtysh.conf /etc/frr/vtysh.conf

# COPY conf_vxlan_1.sh conf_vxlan_1.sh
# COPY conf_vxlan_2.sh conf_vxlan_2.sh

COPY conf_leaf.sh .

RUN chmod +x conf_leaf.sh

#CMD tail -f /dev/null
#ENTRYPOINT ./conf_vxlan.sh
