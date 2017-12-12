#!/bin/bash

set -e

# Example script to shutdown an elasticsearch node
echo "Shutting down $NODE"
echo "Host: $HOST"
echo "Port: $PORT"

alias gssh='gcloud compute ssh --zone us-central1-b'

gssh $HOST --ssh-flag "-o LogLevel=quiet" --command "sudo service elasticsearch stop"

# must exit cleanly
exit 0
