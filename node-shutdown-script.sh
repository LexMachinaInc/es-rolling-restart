#!/bin/bash

set -e

# Example script to shutdown an elasticsearch node
echo "Shutting down $NODE"
echo "Host: $HOST"
echo "Port: $PORT"

ssh $HOST -o LogLevel=quiet -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no "sudo service elasticsearch stop"

# must exit cleanly
exit 0
