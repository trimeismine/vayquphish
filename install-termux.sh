green='\033[1;32m'
greens='\033[0;32m'
echo -e "${green}update\n"
pkg update -y
echo -e "${green}installing ncftp${greens}\n"
pkg install ncftp -y
echo -e "${green}installing php${greens}\n"
pkg install php -y
echo -e "${green}installing ssh${greens}\n"
pkg install ssh -y
echo -e "${green}installing curl${greens}\n"
pkg install curl -y
echo "${green}installing sed${greens}\n"
pkg install sed -y
echo -e "${green}installing npm${greens}\n"
pkg install npm -y
echo -e "${green}installing localtunnel${greens}\n"
npm install -g localtunnel
echo -e "${green}installing unzip${greens}\n"
pkg install unzip -y
echo -e "${green}installing wget${greens}\n"
pkg install wget -y
echo -e "${green}making bin directory${greens}\n"
mkdir bin
echo "${green}opening bin directory${greens}\n"
cd bin
echo -e "${green}installing ngrok.zip${greens}\n"
wget --output-document=ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
echo -e "${green}unziping ngrok.zip${greens}\n"
unzip ngrok.zip
echo -e "${green}removing ngrok.zip${greens}\n"
rm ngrok.zip
echo -e "${green}opening main directory${greens}\n"
cd ../
echo -e "${green}setting up permissions\n"
chmod -R 777 *
echo -e "${green}autoremove${greens}\n"
apt autoremove -y
