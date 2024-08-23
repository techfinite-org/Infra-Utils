# !/bin/bash

sudo apt-get update -y
sudo apt install git python3-dev python3-pip redis-server -y
sudo apt -y install vim libffi-dev python3-pip python3-dev  python3-testresources libssl-dev wkhtmltopdf
sudo curl --silent --location https://deb.nodesource.com/setup_18.x | sudo bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -y && sudo apt-get install yarn -y
sudo apt -y install gcc g++ make nodejs redis-server
sudo apt install curl -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 18
sudo apt-get install npm -y
sudo npm install -g yarn -y
sudo pip3 install frappe-bench -y
sudo apt install python3.10-venv -y