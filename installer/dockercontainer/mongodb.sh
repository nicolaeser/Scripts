#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                       MongoDB Docker Installer                           #"
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
echo "#                        Installing MongoDB Docker                         #"
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
read -p "Please enter MongoDB Container Name (mongodb is recommended): " mongodbname
read -p "Please enter MongoDB Port: " mongodbport
read -p "Please enter MongoDB Root Username: " mongodbrootusername
read -p "Please enter MongoDB Root Password: " mongodbrootpassword
echo "############################################################################"
echo "#              Downloading and Installing MongoDB Container                #"
echo "############################################################################"
docker run --name $mongodbname -e MONGO_INITDB_ROOT_USERNAME=$mongodbrootusername -e MONGO_INITDB_ROOT_PASSWORD=$mongodbrootpassword -d -p $mongodbport:$mongodbport mongo
wait -n 
clear
echo "############################################################################"
echo "#                       Installed MongoDB Docker                           #"
echo "#                                                                          #"
echo "#      MongoDB Name  | $mongodbname                                        #"
echo "#      MongoDB Port  | $mongodbport                                        #"
echo "#      MongoDB Root Username | $mongodbrootusername                        #"
echo "#      MongoDB Root Password | $mongodbrootpassword                        #"
echo "#                                                                          #"
echo "############################################################################"

