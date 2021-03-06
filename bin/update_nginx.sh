#!/bin/bash

conf_path=`dirname $0`/files/offline-material-nginx.conf
conf_path=`realpath $conf_path`
conf_linkpath='/etc/nginx/sites-enabled/offline-material'

www_path=`dirname $0`/..
www_path=`realpath $www_path`
www_linkpath='/var/www/offline-material'

sudo rm -f '/etc/nginx/sites-enabled/default'

sudo rm -f $conf_linkpath
sudo ln -s $conf_path $conf_linkpath
sudo rm -f $www_linkpath
sudo ln -s $www_path $www_linkpath

sudo nginx -t && sudo nginx -s reload || echo "ERROR: could not reload nginx"
