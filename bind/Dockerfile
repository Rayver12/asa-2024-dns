FROM debian 

RUN apt update

RUN apt upgrade -y

RUN apt install bind9 dnsutils -y

RUN apt install vim -y


EXPOSE 53/tcp
EXPOSE 53/udp


#USER bind:bind

COPY ./etc/* /etc/bind/

CMD ["/usr/sbin/named", "-f"]


