#!/bin/sh

# The shared folder is now the directory served by vagrant
sudo rm -rf /var/www/html
sudo ln -s /vagrant /var/www/html

# Add phpmyadmin support to apache
sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
sudo service apache2 restart
