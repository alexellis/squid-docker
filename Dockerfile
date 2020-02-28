FROM ubuntu
MAINTAINER alexellis2@gmail.com
USER root
RUN apt-get -qyy update && apt-get -qyy install \
	nano squid

RUN sed -i "s/^#acl localnet/acl localnet/" /etc/squid/squid.conf
RUN sed -i "s/^#http_access allow localnet/http_access allow localnet/" /etc/squid/squid.conf

#RUN userdel proxy
#RUN useradd proxy -u 1002

EXPOSE 3128

CMD squid -N
