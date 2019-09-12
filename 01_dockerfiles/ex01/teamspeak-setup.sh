#!/bin/sh
apt-get update -y && apt-get upgrade -y
apt-get install -y wget bzip2
wget http://dl.4players.de/ts/releases/3.8.0/teamspeak3-server_linux_amd64-3.8.0.tar.bz2
tar xvf teamspeak3-server_linux_amd64-3.8.0.tar.bz2
rm teamspeak3-server_linux_amd64-3.8.0.tar.bz2
cd teamspeak3-server_linux_amd64
./ts3server_minimal_runscript.sh start