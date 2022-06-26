#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                        Nextcloud Docker Installer                        #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nlagit/scripts                      #"
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
echo "#                        Installing Nextcloud Docker                       #"
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
read -p "Please enter Nextcloud Container Name (nextcloud recommended): " nextcloudname
read -p "Please enter Nextcloud Port 1 (8080 is recommended): " nextcloudport1
read -p "Please enter Nextcloud Port 2 (80 is recommended): " nextcloudport2
echo "############################################################################"
echo "#            Downloading and Installing Nextcloud Container                #"
echo "############################################################################"
docker run -d -p $nextcloudport1:$nextcloudport2 --name $nextcloudname nextcloud 
wait -n 
clear
echo "############################################################################"
echo "#                     Installed Nextcloud Docker                           #"
echo "#                                                                          #"
echo "#      Nextcloud Name  | $nextcloudname                                    #"
echo "#      Nextcloud Port1 | $nextcloudport1                                   #"
echo "#      Nextcloud Port2 | $nextcloudport2                                   #"
echo "#                                                                          #"
echo "############################################################################"

