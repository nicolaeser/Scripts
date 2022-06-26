#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                            Docker Installer                              #"
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
echo "#                              Installer                                   #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/gitipexa/scripts                    #"
echo "############################################################################"
echo "#                                                                          #"
echo "#     1 | Docker Installation                                              #"
echo "#     2 | Docker Installation + Portainer                                  #"
echo "#     3 | Docker Installation + Yacht                                      #"        
echo "#                                                                          #"    
echo "############################################################################"
read -p "Please enter a Number:" installnumber
# Docker Installation
if [ "$installnumber" = "1" ]; then
clear
sleep 1
echo "############################################################################"
echo "#                          Installing Docker                               #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                      Server Update (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                      Server Upgrade (apt upgrade -y)                     #"
echo "############################################################################"
apt upgrade -y
wait -n 
echo "############################################################################"
echo "#                 Docker Installation (apt install docker -y)              #"
echo "############################################################################"
apt install docker -y
wait -n 
echo "############################################################################"
echo "#         Docker-Compose Installation (apt install docker-compose -y)      #"
echo "############################################################################"
apt install docker-compose -y
wait -n
echo "############################################################################"
echo "#                 Starting Docker (systemctl start docker)                 #"
echo "############################################################################"
systemctl start docker
wait -n
echo "############################################################################"
echo "#                 Enabling Docker (systemctl enable docker)                #"
echo "############################################################################"
systemctl enable docker
wait -n
clear
echo "############################################################################"
echo "#                         Installed Docker                                 #"
echo "############################################################################"
fi
# Docker Installation + Portainer
if [ "$installnumber" = "2" ]; then
clear
sleep 1
echo "############################################################################"
echo "#                      Installing Docker + Portainer                       #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                      Server Update (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                      Server Upgrade (apt upgrade -y)                     #"
echo "############################################################################"
apt upgrade -y
wait -n 
echo "############################################################################"
echo "#                 Docker Installation (apt install docker -y)              #"
echo "############################################################################"
apt install docker -y
wait -n 
echo "############################################################################"
echo "#         Docker-Compose Installation (apt install docker-compose -y)      #"
echo "############################################################################"
apt install docker-compose -y
wait -n
echo "############################################################################"
echo "#                 Starting Docker (systemctl start docker)                 #"
echo "############################################################################"
systemctl start docker
wait -n
echo "############################################################################"
echo "#                 Enabling Docker (systemctl enable docker)                #"
echo "############################################################################"
systemctl enable docker
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
echo "#                     Installed Docker + Portainer                         #"
echo "#                                                                          #"
echo "#      Portainer Name  | $portainername                                    #"
echo "#      Portainer Port1 | $portainerport1                                   #"
echo "#      Portainer Port2 | $portainerport2                                   #"
echo "#                                                                          #"
echo "############################################################################"
fi
# Docker Installation + Yacht
if [ "$installnumber" = "3" ]; then
clear
sleep 1
echo "############################################################################"
echo "#                        Installing Docker + Yacht                         #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                      Server Update (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                      Server Upgrade (apt upgrade -y)                     #"
echo "############################################################################"
apt upgrade -y
wait -n 
echo "############################################################################"
echo "#                 Docker Installation (apt install docker -y)              #"
echo "############################################################################"
apt install docker -y
wait -n 
echo "############################################################################"
echo "#         Docker-Compose Installation (apt install docker-compose -y)      #"
echo "############################################################################"
apt install docker-compose -y
wait -n
echo "############################################################################"
echo "#                 Starting Docker (systemctl start docker)                 #"
echo "############################################################################"
systemctl start docker
wait -n
echo "############################################################################"
echo "#                 Enabling Docker (systemctl enable docker)                #"
echo "############################################################################"
systemctl enable docker
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
