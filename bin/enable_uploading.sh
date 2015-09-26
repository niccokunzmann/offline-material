#!/bin/bash

chmod a+rw /var/www/offline-material/uploads/

cd /var/www/offline-material
sudo -u www-data bash -c '/var/www/offline-material/bin/files/cgi_server.py 8000 1>>/var/log/nginx/cgi.log 2>>/var/log/nginx/cgi.log & '

mkdir -p /var/www/offline-material/uploads/
cp /var/www/offline-material/bin/files/upload.html /var/www/offline-material/uploads/

