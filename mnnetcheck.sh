#!/bin/bash
#sentry node and host connection check

echo "Sentry container" 
docker exec -it sentry netstat -nptw | grep -E '$(hostanme -I | awk "{print $1}")|26656|36656|56656' | grep ESTABLISHED

echo "Host" 
netstat -nptw | grep -E '$(hostanme -I | awk "{print $1}")|26656|36656|56656' | grep ESTABLISHED
