#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                       MariaDB Docker Installer                           #"
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
echo "#                        Installing MariaDB Docker                         #"
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
read -p "Please enter MariaDB Container Name (mariadb is recommended): " mariadbname
read -p "Please enter MariaDB Username: " mariadbusername
read -p "Please enter MariaDB Database Password: " mariadbpassword
read -p "Please enter MariaDB Root Password: " mariadbrootpassword
echo "############################################################################"
echo "#              Downloading and Installing MariaDB Container                #"
echo "############################################################################"
docker run --detach --name $mariadbname --env MARIADB_USER=$mariadbusername --env MARIADB_PASSWORD=$mariadbpassword --env MARIADB_ROOT_PASSWORD=$mariadbrootpassword  mariadb:latest
wait -n 
clear
echo "############################################################################"
echo "#                       Installed MariaDB Docker                           #"
echo "#                                                                          #"
echo "#      MariaDB Name  | $mariadbname                                        #"
echo "#      MariaDB User  | $mariadbusername                                    #"
echo "#      MariaDB Password | $mariadbpassword                                 #"
echo "#      MariaDB Root Password | $mariadbrootpassword                        #"
echo "#                                                                          #"
echo "############################################################################"

