#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                         Portainer Docker Installer                       #"
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
echo "#                        Installing Portainer Docker                       #"
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
echo "#     Docker Volume Creating (docker volume create portainer_data)         #"
echo "############################################################################"
docker volume create portainer_data
wait -n
echo "############################################################################"
echo "#                           Enter the Name & Port                          #"
echo "############################################################################"
read -p "Please enter Portainer Container Name (portainer is recommended): " portainername
read -p "Please enter Portainer Port 1 (8000 is recommended): " portainerport1
read -p "Please enter Portainer Port 2 (9443 is recommended): " portainerport2
echo "############################################################################"
echo "#                Downloading and Installing Portainer Container            #"
echo "############################################################################"
docker run -d -p $portainerport1:$portainerport1 -p $portainerport2:$portainerport2 --name=$portainername --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
wait -n
clear
echo "############################################################################"
echo "#                     Installed Portainer Docker                           #"
echo "#                                                                          #"
echo "#      Portainer Name  | $portainername                                    #"
echo "#      Portainer Port1 | $portainerport1                                   #"
echo "#      Portainer Port2 | $portainerport2                                   #"
echo "#                                                                          #"
echo "############################################################################"

