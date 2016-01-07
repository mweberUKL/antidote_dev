#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential libssl-dev libncurses5-dev m4 git

# install erlang R16B02
cd /usr/src
wget http://www.erlang.org/download/otp_src_R16B02.tar.gz
tar xzvf otp_src_R16B02.tar.gz
cd otp_src_R16B02/
./configure --disable-hipe --without-odbc
make
make install

# install rebar
cd /usr/bin
wget http://cloud.github.com/downloads/basho/rebar/rebar && chmod +x rebar

# install rebar templates for riak
# cd /usr/src
# git clone https://github.com/basho/rebar_riak_core.git
# cd rebar_riak_core
# git checkout rdb/syncfree
# make

# minimal git configuration with pseudo user
echo '[user]' >> /home/vagrant/.gitconfig
echo '    email = antidote@example.com' >> /home/vagrant/.gitconfig
echo '    name = Antidote Dev' >> /home/vagrant/.gitconfig
chown vagrant:vagrant /home/vagrant/.gitconfig

mkdir /home/vagrant/antidote
chown vagrant:vagrant /home/vagrant/antidote
echo 'export REL=$HOME/antidote/rel' >> /home/vagrant/.bashrc
echo 'export DEV=$HOME/antidote/dev' >> /home/vagrant/.bashrc
