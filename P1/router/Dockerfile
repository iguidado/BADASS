FROM frrouting/frr

ENV VTYSH_PAGER=less\ -EFX

COPY ./conf/daemons /etc/frr/daemons
COPY ./conf/vtysh.conf /etc/frr/vtysh.conf

# For a better paging of command output
