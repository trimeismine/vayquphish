
# Summary

Advanced phishing tool with unique instrumentation. 
With vayquphish system administrators and security professionals can create own phishing simulation platforms for known social networks. 
**important**  run vayquphish as the root user so as to run it on port 80 

# Installation and Execution

To download, install and execute the script, run the commands below 

    git clone https://github.com/MyAITech/vayquphish.git
    cd vayquphish
    chmod 777 install.sh start.sh
    sudo ./install.sh
    ./start.sh
    
On termux

    git clone https://github.com/MyAITech/vayquphish.git
    cd vayquphish
    chmod 777 install-termux.sh start.sh
    ./install-termux.sh
    ./start.sh

#  CHANGELOG

### vayquphish v1.2

 - amd64 support for termux added

### vayquphish v1.1

 - Ngrok support for termux added

### vayquphish v1.0
- Support adding additional scripts, forms and templates.
- 3 new forms added(Facebook, Instagram, LinkedIn)
- 1 template added(liky)
- 1 script added (location)
- 4 methods for tunneling added (localhost, localtunnel, ngrok, serveo)
- 1 method for upload added(ftp)
