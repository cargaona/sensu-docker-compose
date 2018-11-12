#!/bin/bash
rm -f /etc/sensu/uchiwa.json
mv /etc/sensu/conf.d/uchiwa.json /etc/sensu/
cp /etc/sensu/uchiwa.json /etc/sensu/dashboard.d/

/opt/sensu/embedded/bin/sensu-api -b -c /etc/sensu/conf.d/config.json > logapi &
/opt/sensu/embedded/bin/sensu-server -b -c /etc/sensu/conf.d/config.json > logserver &

## /opt/sensu/embedded/bin/sensu-client -b -c /etc/sensu/conf.d/config.json > logclient &
##/opt/uchiwa/bin/uchiwa -c  /etc/sensu/uchiwa.json > loguchiwa &
/opt/uchiwa/bin/uchiwa -d /etc/sensu/dashboard.d -c /etc/sensu/dashboard.d/uchiwa.json -p /opt/uchiwa/src/public > logdash &
