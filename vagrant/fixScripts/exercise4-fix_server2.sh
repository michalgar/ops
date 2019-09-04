#!/bin/bash
# add server to hosts file
echo "192.168.100.10 server1" | sudo tee -a /etc/hosts > /dev/null