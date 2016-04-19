# Readme for the docker cluster configuration

## Docker containers

The configuration assumes that the following docker containers exist:

* mweber/erlang:R16B02
* mweber/antidote:mweberUKL

If these are not available on docker-hub, build them by going into the `docker_erlang` and `docker_antidote` folders and build them using `make`.

# Starting

To start the shell, use `docker-compose run shell /bin/bash`. This starts two Antidote nodes on the hosts `node1` and `node2`. The Antidote instances on these nodes are accessible as short-names `antidote@node1` and `antidote@node2`.

## Joining the cluster

To join the nodes into a cluster, use the following command sequence in the `docker_cluster` folder:

* `docker-compose exec node1 /opt/antidote/bin/antidote-admin cluster join 'antidote@node2'`
* `docker-compose exec node1 /opt/antidote/bin/antidote-admin cluster plan`
* `docker-compose exec node1 /opt/antidote/bin/antidote-admin cluster commit`

Afterwards, `docker-compose exec node1 /opt/antidote/bin/antidote-admin member-status` should give an indication of the process of joining the two nodes into a cluster.
