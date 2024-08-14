# !/bin/bash

sudo apt update -y
sudo apt install mariadb-server mariadb-client -y
sudo mysql_secure_installation
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
echo "[mysqld]\ncharacter-set-client-handshake = FALSE\ncharacter-set-server = utf8mb4\ncollation-server = utf8mb4_unicode_ci\n\n[mysql]\ndefault-character-set = utf8mb4" >> /etc/mysql/my.cnf
sudo service mariadb restart