#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                              File Getter                                 #"
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
echo "#                             File Getter                                  #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nilasystem/scripts                  #"
echo "############################################################################"
echo "#                                                                          #"
echo "#     1 | Server Manager                                                   #"
echo "#     2 | Installer                                                        #"      
echo "#                                                                          #"    
echo "############################################################################"
read -p "Please enter a Number:" choosenfile

# Server Manager
if [ "$choosenfile" = "1" ]; then
clear
echo "############################################################################"
echo "#                             Server Manager                               #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/servermanager.sh     #"
echo "# chmod +x servermanager.sh                                                #"
echo "# ./servermanager.sh                                                       #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/servermanager.sh
wait -n
chmod +x servermanager.sh
wait -n 
./servermanager.sh
fi

# Installer Menu
if [ "$choosenfile" = "2" ]; then
clear
echo "############################################################################"
echo "#                        Direct or Docker Container?                       #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nilasystem/scripts                  #"
echo "############################################################################"
echo "#                                                                          #"
echo "#     1 | Direct                                                           #"
echo "#     2 | Docker Container                                                 #"      
echo "#                                                                          #"    
echo "############################################################################"
read -p "Please enter a Number:" choosentype

if [ "$choosentype" = "1" ]; then
clear
echo "############################################################################"
echo "#                              Direct                                      #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nilasystem/scripts                  #"
echo "############################################################################"
echo "#                                                                          #"
echo "#     1 | Docker                                                           #"
echo "#     2 | Apache                                                           #" 
echo "#     3 | Nginx                                                            #"
echo "#     4 | NodeJS                                                           #"
echo "#     5 | Git                                                              #"
echo "#     6 | MariaDB                                                          #"
echo "#     7 | PHP                                                              #"
echo "#     8 | Python                                                           #" 
echo "#     9 | Keyhelp                                                          #"
echo "#    10 | Adguard Home                                                     #"
echo "#    11 | Pi Hole                                                          #"    
echo "#                                                                          #"    
echo "############################################################################"
read -p "Please enter a Number:" choosendirect

# Docker Direct
if [ "$choosendirect" = "1" ]; then
clear
echo "############################################################################"
echo "#                            Docker Direct                                 #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/docker.sh  #"
echo "# chmod +x docker.sh                                                       #"
echo "# ./docker.sh                                                              #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/docker.sh
wait -n
chmod +x docker.sh
wait -n 
./docker.sh
fi
# Apache Direct
if [ "$choosendirect" = "2" ]; then
clear
echo "############################################################################"
echo "#                            Apache Direct                                 #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/apache.sh  #"
echo "# chmod +x apache.sh                                                       #"
echo "# ./apache.sh                                                              #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/apache.sh
wait -n
chmod +x apache.sh
wait -n 
./apache.sh
fi
# Nginx Direct
if [ "$choosendirect" = "3" ]; then
clear
echo "############################################################################"
echo "#                            Nginx Direct                                  #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/nginx.sh   #"
echo "# chmod +x nginx.sh                                                        #"
echo "# ./nginx.sh                                                               #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/nginx.sh
wait -n
chmod +x nginx.sh
wait -n 
./nginx.sh
fi

# NodeJS Direct
if [ "$choosendirect" = "4" ]; then
clear
echo "############################################################################"
echo "#                            NodeJS Direct                                 #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/nodejs.sh  #"
echo "# chmod +x nodejs.sh                                                       #"
echo "# ./nodejs.sh                                                              #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/nodejs.sh
wait -n
chmod +x nodejs.sh
wait -n 
./nodejs.sh
fi

# Git Direct
if [ "$choosendirect" = "5" ]; then
clear
echo "############################################################################"
echo "#                             Git Direct                                   #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/git.sh     #"
echo "# chmod +x git.sh                                                          #"
echo "# ./git.sh                                                                 #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/git.sh
wait -n
chmod +x git.sh
wait -n 
./git.sh
fi

# MariaDB Direct
if [ "$choosendirect" = "6" ]; then
clear
echo "############################################################################"
echo "#                           MariaDB Direct                                 #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/mariadb.sh #"
echo "# chmod +x mariadb.sh                                                      #"
echo "# ./mariadb.sh                                                             #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/mariadb.sh
wait -n
chmod +x mariadb.sh
wait -n 
./mariadb.sh
fi

# PHP Direct
if [ "$choosendirect" = "7" ]; then
clear
echo "############################################################################"
echo "#                             PHP Direct                                   #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/php.sh     #"
echo "# chmod +x docker.sh                                                       #"
echo "# ./docker.sh                                                              #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/php.sh
wait -n
chmod +x php.sh
wait -n 
./php.sh
fi

# Python Direct
if [ "$choosendirect" = "8" ]; then
clear
echo "############################################################################"
echo "#                            Python Direct                                 #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/python.sh  #"
echo "# chmod +x python.sh                                                       #"
echo "# ./docker.sh                                                              #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/docker.sh
wait -n
chmod +x python.sh
wait -n 
./python.sh
fi
# Keyhelp Direct
if [ "$choosendirect" = "9" ]; then
clear
echo "############################################################################"
echo "#                           Keyhelp Direct                                 #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/keyhelp.sh #"
echo "# chmod +x keyhelp.sh                                                      #"
echo "# ./keyhelp.sh                                                             #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/keyhelp.sh
wait -n
chmod +x keyhelp.sh
wait -n 
./keyhelp.sh
fi
# Adguard Home Direct
if [ "$choosendirect" = "10" ]; then
clear
echo "############################################################################"
echo "#                         Adguard Home Direct                              #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/adguardhome.sh #"
echo "# chmod +x adguardhome.sh                                                      #"
echo "# ./adguardhome.sh                                                             #"
echo "################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/adguardhome.sh
wait -n
chmod +x adguardhome.sh
wait -n 
./adguardhome.sh
fi

# Pi Hole Direct
if [ "$choosendirect" = "11" ]; then
clear
echo "############################################################################"
echo "#                           Pi Hole Direct                                 #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/pihole.sh  #"
echo "# chmod +x pihole.sh                                                       #"
echo "# ./pihole.sh                                                              #"
echo "############################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/pihole.sh
wait -n
chmod +x pihole.sh
wait -n 
./pihole.sh
fi


fi

if [ "$choosentype" = "2" ]; then
clear
echo "############################################################################"
echo "#                          Docker Container                                #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nilasystem/scripts                  #"
echo "############################################################################"
echo "#                                                                          #"
echo "#     1 | Apache                                                           #"
echo "#     2 | Grafana                                                          #" 
echo "#     3 | MariaDB                                                          #"
echo "#     4 | MongoDB                                                          #"
echo "#     5 | MySQL                                                            #"
echo "#     6 | Nextcloud                                                        #"
echo "#     7 | Nginx                                                            #"
echo "#     8 | Portainer                                                        #"    
echo "#     9 | Uptimekuma                                                       #"
echo "#    10 | Wordpress                                                        #"
echo "#    11 | Yacht                                                            #" 
echo "#    12 | Sinusbot                                                         #" 
echo "#    13 | Dashy                                                            #" 
echo "#                                                                          #"    
echo "############################################################################"
read -p "Please enter a Number:" choosencontainer
# Apache Container
if [ "$choosencontainer" = "1" ]; then
clear
echo "############################################################################"
echo "#                            Apache Container                              #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/apache.sh     #"
echo "# chmod +x apache.sh                                                                          #"
echo "# ./apache.sh                                                                                 #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/apache.sh
wait -n
chmod +x apache.sh
wait -n 
./apache.sh
fi
# Grafana Container
if [ "$choosencontainer" = "2" ]; then
clear
echo "############################################################################"
echo "#                            Grafana Container                             #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/grafana.sh    #"
echo "# chmod +x grafana.sh                                                                         #"
echo "# ./grafana.sh                                                                                #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/grafana.sh
wait -n
chmod +x grafana.sh
wait -n 
./grafana.sh
fi
# MariaDB Container
if [ "$choosencontainer" = "3" ]; then
clear
echo "############################################################################"
echo "#                           MariaDB Container                              #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/mariadb.sh    #"
echo "# chmod +x mariadb.sh                                                                         #"
echo "# ./mariadb.sh                                                                                #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/mariadb.sh
wait -n
chmod +x mariadb.sh
wait -n 
./mariadb.sh
fi
# MongoDB Container
if [ "$choosencontainer" = "4" ]; then
clear
echo "############################################################################"
echo "#                           MongoDB Container                              #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/mongodb.sh    #"
echo "# chmod +x mongodb.sh                                                                         #"
echo "# ./mongodb.sh                                                                                #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/mongodb.sh
wait -n
chmod +x mongodb.sh
wait -n 
./mongodb.sh
fi
# MySQL Container
if [ "$choosencontainer" = "5" ]; then
clear
echo "############################################################################"
echo "#                            MySQL Container                               #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/mysql.sh      #"
echo "# chmod +x mysql.sh                                                                           #"
echo "# ./mysql.sh                                                                                  #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/mysql.sh
wait -n
chmod +x mysql.sh
wait -n 
./mysql.sh
fi
# Nextcloud Container
if [ "$choosencontainer" = "6" ]; then
clear
echo "############################################################################"
echo "#                            Nextcloud Container                           #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/nextcloud.sh  #"
echo "# chmod +x nextcloud.sh                                                                       #"
echo "# ./nextcloud.sh                                                                              #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/nextcloud.sh
wait -n
chmod +x nextcloud.sh
wait -n 
./nextcloud.sh
fi
# Nginx
if [ "$choosencontainer" = "7" ]; then
clear
echo "############################################################################"
echo "#                            Nginx Container                               #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/nginx.sh      #"
echo "# chmod +x nginx.sh                                                                           #"
echo "# ./nginx.sh                                                                                  #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/nginx.sh
wait -n
chmod +x nginx.sh
wait -n 
./nginx.sh
fi
# Portainer Container
if [ "$choosencontainer" = "8" ]; then
clear
echo "############################################################################"
echo "#                         Portainer Container                              #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/portainer.sh  #"
echo "# chmod +x portainer.sh                                                                       #"
echo "# ./portainer.sh                                                                              #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/portainer.sh
wait -n
chmod +x portainer.sh
wait -n 
./portainer.sh
fi
# Uptimekuma
if [ "$choosencontainer" = "9" ]; then
clear
echo "############################################################################"
echo "#                        Uptimekuma Container                              #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/uptimekuma.sh     #"
echo "# chmod +x uptimekuma.sh                                                                      #"
echo "# ./uptimekuma.sh                                                                             #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/uptimekuma.sh
wait -n
chmod +x uptimekuma.sh
wait -n 
./uptimekuma.sh
fi
# Wordpress Container
if [ "$choosencontainer" = "10" ]; then
clear
echo "############################################################################"
echo "#                         Wordpress Container                              #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/wordpress.sh  #"
echo "# chmod +x wordpress.sh                                                                       #"
echo "# ./wordpress.sh                                                                              #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/wordpress.sh
wait -n
chmod +x wordpress.sh
wait -n 
./wordpress.sh
fi
# Yacht Container
if [ "$choosencontainer" = "11" ]; then
clear
echo "############################################################################"
echo "#                            Yacht Container                               #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/yacht.sh      #"
echo "# chmod +x yacht.sh                                                                           #"
echo "# ./yacht.sh                                                                                  #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/yacht.sh
wait -n
chmod +x yacht.sh
wait -n 
./yacht.sh
fi
# Sinusbot Container
if [ "$choosencontainer" = "12" ]; then
clear
echo "############################################################################"
echo "#                         Sinusbot Container                               #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/sinusbot.sh   #"
echo "# chmod +x sinusbot.sh                                                                        #"
echo "# ./sinusbot.sh                                                                               #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/sinusbot.sh
wait -n
chmod +x sinusbot.sh
wait -n 
./sinusbot.sh
fi
# Dashy Container
if [ "$choosencontainer" = "13" ]; then
clear
echo "############################################################################"
echo "#                           Dashy Container                                #"
echo "############################################################################"
sleep 1
echo "############################################################################"
echo "#                    Updating Server (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                     Upgrading Server (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "###############################################################################################"
echo "# wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/dashy.sh      #"
echo "# chmod +x dashy.sh                                                                           #"
echo "# ./dashy.sh                                                                                  #"
echo "###############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/installer/dockercontainer/dashy.sh
wait -n
chmod +x dashy.sh
wait -n 
./dashy.sh
fi
fi

fi