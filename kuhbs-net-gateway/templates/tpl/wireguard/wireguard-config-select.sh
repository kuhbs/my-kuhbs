#!/bin/bash
#
# Select random wireguard config file from /etc/wireguard/*conf and copy to /etc/wireguard/wireguard.conf


random_config_file=$(ls /etc/wireguard/ | grep -v wireguard.conf | sort -R | tail -n 1)
cp /etc/wireguard/$random_config_file /etc/wireguard/wireguard.conf
