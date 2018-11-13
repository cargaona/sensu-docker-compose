#!/bin/bash
/opt/sensu/embedded/bin/sensu-client -b -c /etc/sensu/conf.d/client.json > logclient &
