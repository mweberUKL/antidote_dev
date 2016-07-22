#!/bin/bash

for i in 1 2
do
  docker-compose exec node${i} tc qdisc replace dev eth0 root netem delay 100ms 50ms distribution normal loss 5%
done

echo "Turned large network emulation on"
