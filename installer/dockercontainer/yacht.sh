#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                         Yacht Docker Installer                           #"
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
echo "#                        Installing Yacht Docker                           #"
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
echo "#            Docker Volume Creating (docker volume create yacht)           #"
echo "############################################################################"
docker volume create yacht
wait -n
echo "############################################################################"
echo "#                           Enter the Name & Port                          #"
echo "############################################################################"
read -p "Please enter Yacht Container Name (yacht is recommended): " yachtname
read -p "Please enter Yacht Port1 (8000 is recommended): " yachtport1
echo "############################################################################"
echo "#                Downloading and Installing Yacht Container                #"
echo "############################################################################"
docker run -d -p $yachtport1:$yachtport1 -v /var/run/docker.sock:/var/run/docker.sock -v yacht:/config --name $yachtname selfhostedpro/yacht
wait -n 
clear
echo "############################################################################"
echo "#                     Installed Docker + Yacht                             #"
echo "#                                                                          #"
echo "#      Yacht Name  | $yachtname                                            #"
echo "#      Yacht Port1 | $yachtport1                                           #"
echo "#                                                                          #"
echo "#      Default Login:                                                      #"
echo "#                                                                          #"
echo "#      admin@yacht.local                                                   #"
echo "#      pass                                                                #"
echo "#                                                                          #"
echo "#      After logging in, you should change the Login Datas.                #"
echo "#                                                                          #"
echo "############################################################################"
fi