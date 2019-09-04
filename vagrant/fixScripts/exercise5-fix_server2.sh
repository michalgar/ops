#!/bin/bash
# disable StrickHostKeyChecking
sed -i "s|#   StrictHostKeyChecking ask|    StrictHostKeyChecking no|g" /etc/ssh/ssh_config

# install sshpass so I could pass the password to ssh non-interactively,
# and append the public key from server1 to authorized keys of this server
apt-get install -y sshpass
sshpass -p vagrant ssh vagrant@192.168.100.10 "cat ~/.ssh/id_rsa.pub" | tee -a /home/vagrant/.ssh/authorized_keys