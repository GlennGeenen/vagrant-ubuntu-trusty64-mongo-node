#!/bin/sh
sudo su -

# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# install git, mongodb and nginx
apt-get -y update
apt-get -y install git mongodb-org nginx

# install node version manager
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

# pickup changes
source ~/.profile

# install nodejs lts version
nvm install 4.4
nvm use 4.4
nvm alias default 4.4
