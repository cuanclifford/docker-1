FROM debian

ENV TS3SERVER_LICENSE accept

WORKDIR /teamspeak

EXPOSE 9987/udp

EXPOSE 10011
EXPOSE 30033

COPY . /teamspeak

CMD ./teamspeak-setup.sh