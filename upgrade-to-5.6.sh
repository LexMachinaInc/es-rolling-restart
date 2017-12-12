#!/bin/bash

# Example script to restart an elasticsearch node
echo "Running updates on $NODE"
echo "Host: $HOST"
echo "Port: $PORT"

ansible-playbook -l $HOST es.yml

# Those commands should include starting the elasticsearch 
# instance once updates are complete.

exit 0
