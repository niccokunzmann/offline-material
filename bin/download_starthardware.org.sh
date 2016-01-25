#!/bin/bash

source `dirname $0`/main.sh

rm -rf StartHardware
mkdir -p StartHardware
cd StartHardware

echo "<html>
  <head>
    <meta http-equiv=refresh content='0; url=starthardware.org/index.html' />
  </head>
</html>" > index.html

wget --mirror --convert-links --adjust-extension --page-requisites --no-parent --span-hosts \
     --domains='*.gravatar.com,ajax.googleapis.com,fonts.googleapis.com,starthardware.org,www.googletagmanager.com' \
     --exclude-domains=www.youtube.com,sciencehackday2015.eventbrite.com \
     http://starthardware.org


