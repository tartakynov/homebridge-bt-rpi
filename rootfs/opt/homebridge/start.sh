#!/bin/sh

HB_SERVICE_STORAGE_PATH="/var/lib/homebridge"
HB_SERVICE_NODE_EXEC_PATH="/opt/homebridge/bin/node"
HB_SERVICE_EXEC_PATH="/opt/homebridge/lib/node_modules/homebridge-config-ui-x/dist/bin/hb-service.js"

. "/opt/homebridge/source.sh"

cd $HB_SERVICE_STORAGE_PATH

# remove homebridge-config-ui-x package from the plugins store
if [ -e "/var/lib/homebridge/node_modules/homebridge-config-ui-x" ]; then
  rm -rf $HB_SERVICE_STORAGE_PATH/node_modules/homebridge-config-ui-x
fi

exec $HB_SERVICE_NODE_EXEC_PATH $HB_SERVICE_EXEC_PATH run -I -U $HB_SERVICE_STORAGE_PATH -P $HB_SERVICE_STORAGE_PATH/node_modules --strict-plugin-resolution "$@"
