#!/bin/bash

# this is for 64bit install!!

clear
echo 'Starting MongoDB install'
echo 'NOTE! This is for 64BIT ONLY!'
read -p "Are you sure you want to continue? (y/n) " RESP
if [ "$RESP" = "y" ]; then
  echo '[10gen]' >> /etc/yum.repos.d/10gen.repo
  echo 'name=10gen Repository' >> /etc/yum.repos.d/10gen.repo
  echo 'baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64' >> /etc/yum.repos.d/10gen.repo
  echo 'gpgcheck=0' >> /etc/yum.repos.d/10gen.repo
  echo 'enabled=1' >> /etc/yum.repos.d/10gen.repo
  yum install -y mongo-10gen mongo-10gen-server
  service mongod start
  chkconfig mongod on
  clear
echo 'MongoDB is installed and running.'
else
  echo "Ok, MongoDB wasn't installed"
fi

