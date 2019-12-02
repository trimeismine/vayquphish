#!/bin/bash
green='\033[1;32m'
greens='\033[0;32m'
reset='\033[0m'
if [ "$EUID" -ne 0 ]; then 
	echo  -e "Please run as root${greens}"
	exit
fi
echo  -e "${green}update\n"
apt update
echo  -e "${green}installing sudo${greens}\n"
apt install sudo -y
echo  -e "${green}update\n"
sudo apt update
echo  -e "${green}installing ncftp${greens}\n"
sudo apt install ncftp -y
echo  -e "${green}installing php${greens}\n"
sudo apt install php -y
echo  -e "${green}installing ssh${greens}\n"
sudo apt install ssh -y
echo  -e "${green}installing curl${greens}\n"
sudo apt install curl -y
echo  -e "${green}installing sed${greens}\n"
sudo apt install sed -y
echo  -e "${green}installing npm${greens}\n"
sudo apt install npm -y
echo  -e "${green}installing localtunnel${greens}\n"
sudo npm install -g localtunnel
echo  -e "${green}installing unzip${greens}\n"
sudo apt install unzip -y
echo  -e "${green}installing wget${greens}\n"
sudo apt install wget -y
echo  -e "${green}making bin directory${greens}\n"
mkdir bin
echo  -e "${green}opening bin directory${greens}\n"
cd bin
echo  -e "${green}installing ngrok.zip${greens}\n"
wget --output-document=ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
echo  -e "${green}unziping ngrok.zip${greens}\n"
unzip ngrok.zip
echo  -e "${green}removing ngrok.zip${greens}\n"
rm ngrok.zip
echo  -e "${green}opening main directory${greens}\n"
cd ../
echo  -e "${green}setting up permissions\n"
chmod -R 777 *
echo  -e "${green}autoremove${greens}\n"
sudo apt autoremove -y
echo  -e "${reset}\n"
exit