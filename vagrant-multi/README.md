# How to use

This setup uses Vagrant to start a two-node cluster of Antidote DCs.
Antidote runs as Docker container inside the created VMs.

The ports are forwarded to the VMs.
The VMs have fixed ip addresses and can be connected to using `vagrant ssh antidote1` and `vagrant ssh antidote2`.

Here is an overview of the setup:

![Overview](./Antidote%20interdc.svg)
