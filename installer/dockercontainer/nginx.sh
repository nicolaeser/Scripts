#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                         Nginx Docker Installer                           #"
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
echo "#                        Installing Nginx Docker                           #"
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
read -p "Please enter Nginx Container Name (nginx is recommended): " nginxname
read -p "Please enter Nginx Port 1 (8080 is recommended): " nginxport1
read -p "Please enter Nginx Port 2 (80 is recommended): " nginxport2
echo "############################################################################"
echo "#              Downloading and Installing Ngnix Container                  #"
echo "############################################################################"
docker run -it --rm -d -p $nginxport1:$nginxport2 --name $nginxname nginx
wait -n 
clear
echo "############################################################################"
echo "#                     Installed Ngnix Docker                               #"
echo "#                                                                          #"
echo "#      Ngnix Name  | $nginxname                                            #"
echo "#      Ngnix Port1 | $nginxport1                                           #"
echo "#      Ngnix Port2 | $nginxport2                                           #"
echo "#                                                                          #"
echo "############################################################################"

