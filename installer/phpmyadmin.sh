#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                            PhpMyAdmin Installer                          #"
echo "#                              by Nico L.                                  #"
echo "#                 https://github.com/nilasystem/requestscripts             #"
echo "#                          Last Update: 07.10.2022                         #"
echo "############################################################################"
sleep 3
clear
echo "############################################################################"
echo "#                            Installing PhpMyAdmin                         #"
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
echo "#    apt install ca-certificates apt-transport-https lsb-release gnupg     #"
echo "#                        curl nano unzip -y                                #"
echo "############################################################################"
apt install ca-certificates apt-transport-https lsb-release gnupg curl nano unzip -y
wait -n
echo "############################################################################" 
echo "# curl -fsSL https://packages.sury.org/php/apt.gpg -o                      #"
echo "# /usr/share/keyrings/php-archive-keyring.gpg                              #" 
echo "############################################################################"
curl -fsSL https://packages.sury.org/php/apt.gpg -o /usr/share/keyrings/php-archive-keyring.gpg
wait -n 
echo "############################################################################"
echo "#      echo deb [signed-by=/usr/share/keyrings/php-archive-keyring.gpg]    #" 
echo "#           https://packages.sury.org/php/ $(lsb_release -sc) main         #" 
echo "#                       > /etc/apt/sources.list.d/php.list                 #"
echo "############################################################################"
echo "deb [signed-by=/usr/share/keyrings/php-archive-keyring.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
wait -n 
echo "############################################################################"
echo "#                         apt install apache2 -y                           #"
echo "############################################################################"
apt install apache2 -y
wait -n 
echo "############################################################################"
echo "# apt install php8.0 php8.0-cli php8.0-common php8.0-curl php8.0-gd        #"   
echo "# php8.0-intl php8.0-mbstring php8.0-mysql php8.0-opcache php8.0-readline  #" 
echo "# php8.0-xml php8.0-xsl php8.0-zip php8.0-bz2 libapache2-mod-php8.0 -y     #" 
echo "############################################################################"
apt install php8.0 php8.0-cli php8.0-common php8.0-curl php8.0-gd php8.0-intl php8.0-mbstring php8.0-mysql php8.0-opcache php8.0-readline php8.0-xml php8.0-xsl php8.0-zip php8.0-bz2 libapache2-mod-php8.0 -y
wait -n
echo "############################################################################"
echo "# Information! These are only Recommandations!                             #"
echo "# 1: Press No!                                                             #"
echo "# 2: Change the Password!                                                  #"
echo "# 3: After that: Press Enter!                                              #"
echo "#               !!!         WAITING 10 SECONDS         !!!                 #"            
echo "############################################################################" 
sleep 10
mysql_secure_installation
wait -n
echo "############################################################################"
echo "#                             cd /usr/share                                #"
echo "############################################################################"
cd /usr/share
wait -n
echo "############################################################################"
echo "#                                 wget                                     #"
echo "# https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.zip #" 
echo "#                         -O phpmyadmin.zip                                #"
echo "############################################################################"
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.zip -O phpmyadmin.zip
wait -n 
echo "############################################################################"
echo "#                           unzip phpmyadmin.zip                           #"
echo "############################################################################"
unzip phpmyadmin.zip
wait -n 
echo "############################################################################"
echo "#                           rm phpmyadmin.zip                              #"
echo "############################################################################"
rm phpmyadmin.zip
wait -n
echo "############################################################################"
echo "#              mv phpMyAdmin-*-all-languages phpmyadmin                    #"
echo "############################################################################"
mv phpMyAdmin-*-all-languages phpmyadmin
wait -n
echo "############################################################################"
echo "#                         chmod -R 0755 phpmyadmin                         #"
echo "############################################################################"
chmod -R 0755 phpmyadmin
wait -n
echo "##############################################################################################"
echo "#   wget https://github.com/nilasystem/scripts/raw/main/files/phpmyadmin/phpmyadmin.conf     #"
echo "##############################################################################################"
wget https://github.com/nilasystem/scripts/raw/main/files/phpmyadmin/phpmyadmin.conf 
wait -n
echo "############################################################################"
echo "#                            a2enconf phpmyadmin                           #"
echo "############################################################################"
a2enconf phpmyadmin
wait -n
echo "############################################################################"
echo "#                         systemctl reload apache2                         #"
echo "############################################################################"
systemctl reload apache2
wait -n
echo "############################################################################"
echo "#                      mkdir /usr/share/phpmyadmin/tmp/                    #"
echo "############################################################################"
mkdir /usr/share/phpmyadmin/tmp/
wait -n 
echo "############################################################################"
echo "#            chown -R www-data:www-data /usr/share/phpmyadmin/tmp/         #"
echo "############################################################################"
chown -R www-data:www-data /usr/share/phpmyadmin/tmp/
wait -n
echo "############################################################################"
echo "#                        Installed PhpMyAdmin                              #"
echo "#  ===> You need to create a PhpMyAdmin Account to be able to log you in.  #"
echo "############################################################################"

