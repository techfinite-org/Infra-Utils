# !/bin/bash

sudo apt update -y
sudo apt install software-properties-common mariadb-server mariadb-client -y
sudo echo "[mysqld]\nbind_address=0.0.0.0\ncharacter-set-client-handshake = FALSE\ncharacter-set-server = utf8mb4\ncollation-server = utf8mb4_unicode_ci\n\n[mysql]\ndefault-character-set = utf8mb4" | sudo tee -a /etc/mysql/my.cnf
sudo service mariadb restart
sudo mysql_secure_installation