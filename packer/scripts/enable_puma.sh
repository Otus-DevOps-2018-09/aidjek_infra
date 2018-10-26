#!/bin/bash
set -e

apt update
apt install git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
sudo cp -pr /home/appuser/puma-server.service /etc/systemd/system
sudo systemctl enable puma-server
sudo systemctl start puma-server
