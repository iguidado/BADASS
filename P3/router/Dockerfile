FROM frrouting/frr

ARG SCRIPT_A=conf_leaf.sh

ENV HOSTNBR=1

ENV IP=1.1.1.2

ENV RR_IP=1.1.1.1

ENV USER=hrecolet

ENV DEV=eth0

ENV REM_DEV=eth1

ENV SCRIPT=${SCRIPT_A}

COPY ./conf/daemons /etc/frr/daemons
COPY ./conf/vtysh.conf /etc/frr/vtysh.conf


COPY leaf_1_spine leaf_2 leaf_3 leaf_4 .
COPY conf_leaf.sh .
COPY conf_spine.sh .

RUN chmod +x conf_leaf.sh
RUN chmod +x conf_spine.sh

ENTRYPOINT ./${SCRIPT}
