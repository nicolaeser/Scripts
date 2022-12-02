#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                           MariaDB Installer                              #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/ipexadev/scripts                    #"
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
echo "#                            Installing MariaDB                            #"
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
echo "#         MariaDB Server Installation (apt install mariadb-server -y)      #"
echo "############################################################################"
apt install mariadb-server -y
wait -n 
echo "############################################################################"
echo "#                    Checking MariaDB Version (mysql -V)                   #"
echo "############################################################################"
mysql -V
wait -n 
echo "############################################################################"
echo "#                Securing MariaDB (mysql_secure_installation)              #"
echo "############################################################################"
mysql_secure_installation
wait -n
echo "############################################################################"
echo "#                          Installed MariaDB                               #"
echo "############################################################################"


