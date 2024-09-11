#!/bin/bash

read_config() {
    echo "Reading config"
    source ./config.cfg
}

#the magic
#trap is configured to execute a specific function upon the event of a specific signal, 
#trap is configured to execute read_config function in case of a SIGHUP
#issuing a SIGHUP causes it to re-read the config.

trap 'read_config' SIGHUP

read_config

counter=0
while true; do
    counter=$((counter+1))
    echo "Processing file ${counter} .."
    echo "Sleeping for ${sleep_value} seconds."
    sleep $sleep_value
done
