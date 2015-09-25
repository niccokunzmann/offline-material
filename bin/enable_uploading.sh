#!/bin/bash


cd /var/www/offline-material
sudo -u www-data /var/www/offline-material/bin/files/cgi_server.py 8000 1>>cgi.log 2>>cgi.log & 
echo 'started server with pid '$!


