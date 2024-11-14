#!/bin/bash

# Replace environment variables in config template
envsubst < /ServerStatus/server/config.json.template > /ServerStatus/server/config.json

# Start the original command
exec nohup sh -c '/etc/init.d/nginx start && /ServerStatus/server/sergate --config=/ServerStatus/server/config.json --web-dir=/usr/share/nginx/html' 