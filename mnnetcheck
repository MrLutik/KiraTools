#!/bin/bash

echo "Validator container" 
docker exec -it validator netstat -nptw | grep -E '$(hostanme -I | awk "{print $1}")|26656|36656|56656' | grep ESTABLISHED

echo "Host" 
netstat -nptw | grep -E '$(hostanme -I | awk "{print $1}")|26656|36656|56656' | grep ESTABLISHED
