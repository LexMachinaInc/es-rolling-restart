#!/bin/bash

set -e

# Example script to restart an elasticsearch node
ES_VERSION=7.10.0
echo "Running updates on $NODE"
echo "Host: $HOST"
echo "Port: $PORT"
echo "ES_VERSION: $ES_VERSION"

# Those commands should include starting the elasticsearch instance and service once updates are complete.

gcloud compute instances add-metadata $HOST --zone us-central1-b -q --metadata "elasticsearch_version"="$ES_VERSION"

ansible-playbook -l $HOST ../production-configurations/es.yml

#ssh $HOST -o LogLevel=quiet "sudo apt-get update && sudo apt-get -y upgrade && sudo reboot"


exit 0
