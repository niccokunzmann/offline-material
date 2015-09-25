#!/bin/bash

sudo apt-get update
sudo apt-get -y remove nginx
sudo apt-get -y install nginx-extras
sudo apt-get -y install realpath
sudo apt-get -y install unzip

./update_nginx.sh
