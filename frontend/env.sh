#!/bin/bash

# Recreate config file
rm -f ./env-config.js
touch ./env-config.js

# Start configuration object
echo "window._env_ = {" >> ./env-config.js

# Frontend runtime configuration
echo "  REACT_APP_BACKEND_BASE_URI: \"${REACT_APP_BACKEND_BASE_URI}\"," >> ./env-config.js

# Close configuration object
echo "}" >> ./env-config.js
