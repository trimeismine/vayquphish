green='\033[1;32m'
greens='\033[0;32m'
echo "${green}update\n"
pkg update -y
echo "${green}installing ncftp${greens}\n"
pkg install ncftp -y
echo "${green}installing php${greens}\n"
pkg install php -y
echo "${green}installing ssh${greens}\n"
pkg install ssh -y
echo "${green}installing curl${greens}\n"
pkg install curl -y
echo "${green}installing sed${greens}\n"
pkg install sed -y
echo "${green}installing npm${greens}\n"
pkg install npm -y
echo "${green}installing localtunnel${greens}\n"
npm install -g localtunnel
echo "${green}installing unzip${greens}\n"
pkg install unzip -y
echo "${green}installing wget${greens}\n"
pkg install wget -y
echo "${green}making bin directory${greens}\n"
mkdir bin
echo "${green}opening bin directory${greens}\n"
cd bin
pkg autoremove -y