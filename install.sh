green='\033[1;32m'
greens='\033[0;32m'
if [ "$EUID" -ne 0 ] ; then 
	echo -e "Please run as root${greens}"
	exit
fi
echo "${green}update\n"
apt update
echo "${green}installing sudo${greens}\n"
apt install sudo -y
echo "${green}update\n"
sudo apt update
echo "${green}installing ncftp${greens}\n"
sudo apt install ncftp -y
echo "${green}installing php${greens}\n"
sudo apt install php -y
echo "${green}installing ssh${greens}\n"
sudo apt install ssh -y
echo "${green}installing curl${greens}\n"
sudo apt install curl -y
echo "${green}installing sed${greens}\n"
sudo apt install sed -y
echo "${green}installing npm${greens}\n"
sudo apt install npm -y
echo "${green}installing localtunnel${greens}\n"
sudo npm install -g localtunnel
echo "${green}installing unzip${greens}\n"
sudo apt install unzip -y
echo "${green}installing wget${greens}\n"
sudo apt install wget -y
echo "${green}making bin directory${greens}\n"
mkdir bin
echo "${green}opening bin directory${greens}\n"
cd bin
echo "${green}installing ngrok.zip${greens}\n"
wget --output-document=ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
echo "${green}unziping ngrok.zip${greens}\n"
unzip ngrok.zip
echo "${green}removing ngrok.zip${greens}\n"
rm ngrok.zip
echo "${green}opening main directory${greens}\n"
cd ../
echo "${green}setting up permissions\n"
chmod -R 777 *
echo "${green}autoremove${greens}\n"
sudo apt autoremove -y
