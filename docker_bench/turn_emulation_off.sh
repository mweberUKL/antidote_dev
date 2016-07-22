#!/bin/bash

for i in 1 2
do
  docker-compose exec node${i} tc qdisc del dev eth0 root
done

echo "Turned large network emulation off"
