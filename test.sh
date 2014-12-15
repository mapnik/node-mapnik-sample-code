#!/usr/bin/env bash

set -e -u
set -o pipefail

function ensure_it_starts() {
    $1 2>/dev/null 1>/dev/null &
    pid=$!
    sleep 5
    kill $pid
    if [ $? != 0 ]; then
      echo "Unable to start app $1."
      exit 1
    else
      echo "$1 app started just fine"
    fi    
}

node ./render/app.js ./stylesheet.xml map.png --no-open
node memory_datasource/simple.js

# TODO - test that servers return expected image
ensure_it_starts ./image/simple.js
ensure_it_starts ./image/blank.js
ensure_it_starts "./wms/wms_pool.js stylesheet.xml 8000"
ensure_it_starts ./tile/database/app.js
ensure_it_starts "./tile/pool/app.js stylesheet.xml 8000"
ensure_it_starts "./tile/elastic/app.js 8000"