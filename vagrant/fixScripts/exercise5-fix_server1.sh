#!/bin/bash
# disable StrickHostKeyChecking
sed -i "s|#   StrictHostKeyChecking ask|    StrictHostKeyChecking no|g" /etc/ssh/ssh_config

# generate keys and change ownership to vagrant
ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa*