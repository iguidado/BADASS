FROM frrouting/frr

ENV HOSTNBR=1

COPY ./conf/daemons /etc/frr/daemons
COPY ./conf/vtysh.conf /etc/frr/vtysh.conf

# COPY conf_vxlan_1.sh conf_vxlan_1.sh
# COPY conf_vxlan_2.sh conf_vxlan_2.sh

COPY conf_vxlan.sh .

RUN chmod +x conf_vxlan.sh

#CMD tail -f /dev/null
ENTRYPOINT ./conf_vxlan.sh
