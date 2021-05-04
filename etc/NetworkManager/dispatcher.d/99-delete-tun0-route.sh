#!/bin/sh -e

# removes default vpn route that has higher priority than eth

if [ "$1" = "tun0" ] && [ "$2" = "up" ]; then
	ip route delete default via 192.168.121.1
#    route delete default tun0
fi
