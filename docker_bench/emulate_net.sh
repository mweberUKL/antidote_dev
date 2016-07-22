#!/bin/bash
tc qdisc replace dev eth0 root netem delay 100ms 20ms distribution normal loss 10%
