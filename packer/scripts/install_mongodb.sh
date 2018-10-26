#!/bin/bash
set -e

# Install MongoDB
sudo apt install -y dirmngr
if [ "$(awk -F\= '/^ID=/ {print $2}' /etc/os-release)" = "ubuntu" ]; then
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
  sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
elif [ "$(awk -F\= '/^ID=/ {print $2}' /etc/os-release)" = "debian" ]; then
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
  sudo bash -c 'echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list'
fi
apt-get update
apt-get install -y mongodb-org
systemctl enable mongod
