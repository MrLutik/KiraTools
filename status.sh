#!/bin/bash

howto () {
        echo "Enter IP address. status [IP]" 1>&2
        exit 1
}

REQUIRED_PKG="jq"
PKG_OK=$(apt list $REQUIRED_PKG  1/dev/nul 2>/dev/null | grep "installed") 

if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt update -y 1>/dev/null 2>/dev/null
  sudo apt install jq -y 1>/dev/null 2>/dev/null
fi

if [ $# -eq 1 ]; then
        IP=$1
else
        echo $#
        howto
fi

#fetch proposer id
PROPOSER=$(curl -m 10 http://$IP:56657/status 2>/dev/null | jq '.result.validator_info.address' ) 
[ -z "$PROPOSER" ] && { echo "Failed to obtain proposer id. Please try another IP address."; exit 1; } 

#link validator with proposer id and get stats
STATUS=$(curl -m 10 http://$IP:11000/api/valopers?all=true 2>/dev/null | jq ".validators|.[]|select(.proposer == $PROPOSER)" 2>/dev/null)

if [ -z "$STATUS" ]; then
        echo "Failed to obtain stats" 1>&2
        exit 1

else
        echo "$STATUS" | jq
        exit 0
fi
