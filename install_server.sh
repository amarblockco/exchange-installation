sudo apt-get update
echo +++++++++++++++++++ Apache @ Installtion +++++++++++++++++++++++++++++++++++
sudo apt-get install apache2
sudo systemctl enable apache2
sudo systemctl start apache2
sudo systemctl status apache2
echo +++++++++++++++++++ Apache @ Installtion  Done +++++++++++++++++++++++++++++++++++
echo +++++++++++++++++++ Php7.2 @ Installtion +++++++++++++++++++++++++++++++++++
sudo apt-get install software-properties-common python-software-properties
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2 php7.2-cli php7.2-common
sudo apt search php7.2
sudo apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip
sudo a2enmod php7.2
sudo systemctl restart apache2
echo +++++++++++++++++++ Php7.2 @ Installtion Done +++++++++++++++++++++++++++++++++++
php -v
echo +++++++++++++++++++ Php Version @ Installtion +++++++++++++++++++++++++++++++++++
echo +++++++++++++++++++ MongoDB @ Installtion +++++++++++++++++++++++++++++++++++
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org=4.0.3 mongodb-org-server=4.0.3 mongodb-org-shell=4.0.3 mongodb-org-mongos=4.0.3 mongodb-org-tools=4.0.3
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections
sudo service mongod start
echo +++++++++++++++++++ MongoDB @ Installtion Done +++++++++++++++++++++++++++++++++++
echo +++++++++++++++++++ Nodejs @ Installtion Done +++++++++++++++++++++++++++++++++++
sudo apt-get update
cd ~
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs
sudo apt-get install screen
echo +++++++++++++++++++ Nodejs @ Installtion Done +++++++++++++++++++++++++++++++++++
echo ++++++++++++++++++++++++++ Node Version +++++++++++++++++++++++++++
nodejs -v
sudo apt-get install build-essential
sudo apt-get update
sudo apt-get install build-essential libssl-dev
sudo npm install -g express
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Installed Application Versions @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo Php Version
php -v
echo NodeJS Version
node --v 
