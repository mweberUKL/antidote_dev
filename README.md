# Using Antidote with Vagrant

To create the VM with a working Erlang-R16B02 environment and rebar use

`vagrant up`

and connect using

`vagrant ssh`

to the running virtual machine.

A shell opens which can be used as normal. The local folder is mounted under `/vagrant` and should contain checked out `antidote` and `riak_test` repositories.

To remove the virtual machine use the

`vagrant destroy`

command.

# Problems

Riak has problems when the data of the nodes is on the Virtualbox shared file system. Copy the `dev` or `rel` folder into the VM to run the nodes. To solve this issue the `sync-home.sh` script copies the compiled files from `$ANTIDOTE/rel` and `$ANTIDOTE/dev` into a folder called `antidote` in the home-folder of the vagrant user. The scripts `start-cluster.sh` and `start-single.sh` can be used to start these copies.
