#!/bin/sh -e

if [ "$1" = "tun0" ] && [ "$2" = "up" ]; then
	ip route delete dev tun0 default

#	ip route delete default via 192.168.121.1
#	ip route delete default via 192.168.124.1
#	ip route delete default via 192.168.125.1

#    route delete default tun0
fi
