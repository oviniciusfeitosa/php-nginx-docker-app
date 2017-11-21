#!/bin/bash
set -e
echo "[ ****************** ] Starting Endpoint of docker_webserver"
echo "[ ****************** ] Ending Endpoint of docker_webserver"
/bin/bash -c "nginx -g 'daemon off;'"
exec "$@"