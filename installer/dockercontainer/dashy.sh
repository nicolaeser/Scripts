#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                          Dashy Docker Installer                          #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nilasystem/scripts                  #"
echo "#                          Last Update: 27.06.2022                         #"
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
echo "#                        Installing Dashy Docker                           #"
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
read -p "Please enter Dashy Container Name (dashy is recommended): " dashyname
read -p "Please enter Dashy Port 1 (8080 is recommended): " dashyport1
read -p "Please enter Dashy Port 2 (80 is recommended): " dashyport2
echo "############################################################################"
echo "#              Downloading and Installing Dashy Container                  #"
echo "############################################################################"
docker run -p $dashyport1:$dashyport2 --name $dashyname lissy93/dashy
wait -n 
clear
echo "############################################################################"
echo "#                       Installed Dashy Docker                             #"
echo "#                                                                          #"
echo "#        Dashy Name  | $dashyname                                          #"
echo "#        Dashy Port1 | $dashyport1                                         #"
echo "#        Dashy Port2 | $dashyport2                                         #"
echo "#                                                                          #"
echo "############################################################################"

