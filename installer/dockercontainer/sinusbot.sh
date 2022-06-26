#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                        Sinusbot Docker Installer                         #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nilasystem/scripts                  #"
echo "#                          Last Update: 26.06.2022                         #"
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
echo "#                        Installing Sinusbot Docker                        #"
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
read -p "Please enter Sinusbot Container Name (sinusbot recommended): " sinusbotname
read -p "Please enter Sinusbot Port 1 (8087 is recommended): " sinusbotport1
echo "############################################################################"
echo "#            Downloading and Installing Sinusbot Container                 #"
echo "############################################################################"
docker run -d -p $sinusbotport1:$sinusbotport1 \ -v scripts:/opt/sinusbot/scripts \ -v data:/opt/sinusbot/data \ --name $sinusbotname sinusbot/docker
wait -n 
clear
echo "############################################################################"
echo "#                     Installed Sinusbot Docker                            #"
echo "#                                                                          #"
echo "#      Sinusbot Name  | $sinusbotname                                      #"
echo "#      Sinusbot Port1 | $sinusbotport1                                     #"
echo "#                                                                          #"
echo "############################################################################"

