#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                        Wordpress Docker Installer                        #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/gitipexa/scripts                    #"
echo "#                          Last Update: 05.06.2022                         #"
echo "############################################################################"
sleep 3
clear 
echo "############################################################################"
echo "#                            Checking for Root                             #"
echo "############################################################################"
if (( $EUID != 0 )); then
echo "############################################################################"
echo "#                            Please run as root                            #"
echo "############################################################################"
    exit
fi
sleep 1
clear
echo "############################################################################"
echo "#                             Checked for Root                             #"
echo "############################################################################"
sleep 2
clear
echo "############################################################################"
echo "#                          Press Enter to continue                         #"
echo "############################################################################"
read continuepress
sleep 1
clear

echo "############################################################################"
echo "#                        Installing Wordpress Docker                       #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                       Server Update (apt update -y)                      #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                       Server Upgrade (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n 
echo "############################################################################"
echo "#                           Enter the Name & Port                          #"
echo "############################################################################"
read -p "Please enter the Container Name (wordpress is recommended): " wordpressname
read -p "Please enter Wordpress Port 1 (8080 is recommended): " wordpressport1
read -p "Please enter Wordpress Port 2 (80 is recommended): " wordpressport2
echo "############################################################################"
echo "#            Downloading and Installing Wordpress Container                #"
echo "############################################################################"
docker run --name $wordpressname -p $wordpressport1:$wordpressport2 -d wordpress
wait -n 
clear
echo "############################################################################"
echo "#                     Installed Wordpress Docker                           #"
echo "#                                                                          #"
echo "#      Wordpress Name  | $wordpressname                                    #"  
echo "#      Wordpress Port1 | $wordpressport1                                   #"
echo "#      Wordpress Port2 | $wordpressport2                                   #"
echo "#                                                                          #"
echo "############################################################################"

