#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                        Uptimekuma Docker Installer                       #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/gitipexa/scripts                    #"
echo "#                          Last Update: 11.06.2022                         #"
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
echo "#                        Installing Uptimekuma Docker                      #"
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
read -p "Please enter Uptimekuma Container Name (uptimekuma is recommended)" uptimekumaname
read -p "Please enter Uptimekuma Port 1 (3001 is recommended): " uptimekumaport1
echo "############################################################################"
echo "#            Downloading and Installing Uptimekuma Container               #"
echo "############################################################################"
docker run -d --restart=always -p $uptimekumaport1:$uptimekumaport1 -v uptime-kuma:/app/data --name $uptimekumaname louislam/uptime-kuma:1
wait -n 
clear
echo "############################################################################"
echo "#                     Installed Uptimekuma Docker                          #"
echo "#                                                                          #"
echo "#      Uptimekuma Name  | $uptimekumaname                                  #"
echo "#      Uptimekuma Port1 | $uptimekumaport1                                 #"
echo "#                                                                          #"
echo "############################################################################"

