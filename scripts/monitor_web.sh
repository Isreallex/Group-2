#!/bin/bash

LOG_FILE=~/myproject/scripts/docs/logs/web_monitor.log
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Check if container is running
if sudo docker ps --filter "name=webserver" --filter "status=running" | grep -q webserver; then
    STATUS="RUNNING"
else
    STATUS="NOT RUNNING"
fi

# Check response
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080)

echo "$TIMESTAMP | webserver is $STATUS | HTTP response: $RESPONSE" >> "$LOG_FILE"

