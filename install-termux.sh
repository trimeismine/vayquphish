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
echo "${green}installing ngrok.zip${greens}\n"
wget --output-document=ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
echo "${green}unziping ngrok.zip${greens}\n"
unzip ngrok.zip
echo "${green}removing ngrok.zip${greens}\n"
rm ngrok.zip
echo "${green}opening main directory${greens}\n"
cd ../
echo "${green}setting up permissions\n"
chmod -R 777 *
echo "${green}autoremove${greens}\n"
pkg autoremove -y
