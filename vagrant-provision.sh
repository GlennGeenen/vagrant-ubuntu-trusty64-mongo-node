#!/bin/sh
sudo su -

# Install MongoDB 3.2
# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Install NodeJS 4.x
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

# install git, mongodb and nginx
apt-get -y update
apt-get -y install git mongodb-org nginx nodejs
