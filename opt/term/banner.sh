#!/bin/bash
echo -e "\e[32m       ▄▄▄▄"
echo -e "\e[32m   ▄▄▀▀    ▀▀▄▄"
echo -e "\e[32m ▄▀            ▀▄"
echo -e "\e[32m █▀▄▄        ▄▄▀█ \e[37m █   █   ██   ▄█▀█▄ ▐█ ▄█▌ ▀█▀ █  █ █▀▀ ▐█▀▀▄   ▄██▄   █▄  ▄█"
echo -e "\e[32m █   ▀█▄▄▄▄█▀   █ \e[37m █▄▄▄█  █  █  █   ▀ ▐██▀    █  █▄▄█ █▄▄ ▐█▄▄█ ▐█▀  ▀█▌  ▀██▀"
echo -e "\e[32m █      ▐▌      █ \e[37m █▀▀▀█  ████  █   ▄ ▐██▄    █  █  █ █   ▐█▀▀█ ▐█▄  ▄█▌  ▄██▄"
echo -e "\e[32m ▀▄     ▐▌     ▄▀ \e[37m █   █ ▐█  █▌ ▀█▄█▀ ▐█ ▀█▌  █  █  █ █▄▄ ▐█▄▄▀   ▀██▀   █▀  ▀█"
echo -e "\e[32m   ▀▀▄▄ ▐▌ ▄▄▀▀"
echo -e "\e[32m       ▀▀▀▀"
echo " "
cat /opt/term/banner | /usr/games/lolcat -S 55

read -r -p "Press ENTER key to close. " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    exit
fi
