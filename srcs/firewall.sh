#!/bin/bash
#######################################################################################
#Script Name    :firewall.sh
#Description    :redirect an incoming connection to another server
#Args           :       
#Authors        :Ayoub Aqlzim + yassin slati(aka Dolfine)
#License       : NO_LICENSE	/ Open source
#######################################################################################

sudo echo "1" > /proc/sys/net/ipv4/ip_forward

#for a specifi ip_address
iptables -t nat -A PREROUTING -s ip_phone_address -p tcp --dport 80 -j DNAT --to-destination ip_private:80

#for the hole network
iptables -t nat -A PREROUTING -s ip_network/24 -p tcp --dport 80 -j DNAT --to-destination ip_private:80