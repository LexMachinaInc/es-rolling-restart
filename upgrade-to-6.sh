#!/bin/bash

set -e

# Example script to restart an elasticsearch node
ES_VERSION=6.5.1
echo "Running updates on $NODE"
echo "Host: $HOST"
echo "Port: $PORT"
echo "ES_VERSION: $ES_VERSION"

gcloud compute instances add-metadata $HOST --zone us-central1-b -q --metadata "elasticsearch_version"="$ES_VERSION"

ansible-playbook -l $HOST ../../es.yml

# Those commands should include starting the elasticsearch 
# instance once updates are complete.

exit 0
