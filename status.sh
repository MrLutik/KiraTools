#!/bin/sh

howto () {
        echo "Enter IP address. status [IP]" 1>&2
        exit 1
}

REQUIRED_PKG="jq"
PKG_OK=$(apt list $REQUIRED_PKG | grep "installed") 1>/dev/null 2>/dev/null
echo Checking for $REQUIRED_PKG: $PKG_OK
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

#fetch proposer is
PROPOSER=$(curl http://$IP:56657/status 2>/dev/null | jq '.result.validator_info.address' )

#link validator with proposer is and get status
STATUS=$(curl http://$IP:11000/api/valopers 2>/dev/null | jq ".[][] | select(.proposer == $PROPOSER)" 2>/dev/null)

if [ $STATUS -n 0 ]; then
        echo "Failed to obtain stats" 1>&2
        exit 1

else
        echo "$STATUS" | jq
        exit 0
fi
