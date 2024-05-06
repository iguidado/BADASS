FROM alpine

ENV IP=10.1.1.1

COPY conf_host.sh .

RUN chmod +x conf_host.sh

ENTRYPOINT ./conf_host.sh
