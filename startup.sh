#/bin/bash

# /Users/CJ/projects/yapi-docker/data
if [[ -e /yapi/vendors/server/app.js ]]; then
    node /yapi/vendors/server/app.js
else
    yapi server
fi
