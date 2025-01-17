#!/bin/bash
htbip=$(ip addr | grep tun0 | grep inet | grep 10. | tr -s " " | cut -d " " -f 3 | cut -d "/" -f 1)
lab=$(cat /etc/openvpn/client/*.conf | grep "remote " | cut -d " " -f 2 | cut -d "." -f 1 | cut -d "-" -f 2-)

if [[ $htbip == *"10."* ]]
then
   gwip=$(/usr/sbin/route -n | grep tun0 | grep -m 1 UG | tr -s " " | cut -d " " -f 2)
   ping=$(ping -c 1 $gwip -W 1 | sed '$!d;s|.*/\([0-9.]*\)/.*|\1|' | cut -c1-5)
   echo "HTB VPN: $lab ($htbip) [$ping ms]"
else
   echo "HTB VPN: Disconnected"
fi
