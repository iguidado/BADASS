FROM alpine

ARG IP_A

ENV IP=$IP_A

COPY conf_host.sh .

RUN chmod +x conf_host.sh

ENTRYPOINT ./conf_host.sh ${IP}
