#!/bin/sh


# Prompt user for a new sleep value
echo "Enter new sleep value:"
read sleep_value

# Write the new sleep value to config.cfg
echo "sleep_value=$sleep_value" > config.cfg


#get pid
pid=$(ps aux | grep -i myscript.sh | grep -v grep | tr -s " " | cut -d " " -f2)

#force app to re-read config
kill -HUP $pid
