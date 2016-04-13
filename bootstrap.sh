#!/usr/bin/env bash

# add aditional repository for erlang
# echo "deb http://packages.erlang-solutions.com/ubuntu trusty contrib" >> /etc/apt/sources.list
# wget http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc
# apt-key add erlang_solutions.asc

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

# install latest erlang for ubuntu 14.04
# apt-get install -y erlang

# install rebar
cd /usr/bin
wget http://cloud.github.com/downloads/basho/rebar/rebar && chmod +x rebar
wget https://s3.amazonaws.com/rebar3/rebar3 && chmod +x rebar3

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
