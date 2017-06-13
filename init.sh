#!/bin/bash

sudo yum -y update

sudo yum -y install memcached

sudo cp -u /vagrant/memcached.conf /etc/sysconfig/memcached

sudo systemctl enable memcached
sudo systemctl start memcached