#!/bin/bash
# add server to hosts file
echo "192.168.100.11 server2" | sudo tee -a /etc/hosts > /dev/null