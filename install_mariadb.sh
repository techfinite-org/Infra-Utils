# !/bin/bash

sudo apt update -y
sudo apt install mariadb-server mariadb-client -y
sudo mysql_secure_installation
