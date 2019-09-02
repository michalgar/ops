#!/bin/bash
#add fix to exercise5-server2 here
ssh-keygen -t rsa -N "" -f .ssh/id_rsa
sed -i "s|#   StrictHostKeyChecking ask|    StrictHostKeyChecking no|g" /etc/ssh/ssh_config
apt-get install -y sshpass && sshpass -p 'vagrant' ssh-copy-id server1