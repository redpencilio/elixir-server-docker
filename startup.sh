#!/bin/bash

sh /setup.sh

IP_ADDRESS=`ip addr show eth0 | grep inet | grep -oP "\\d+.\\d+.\\d+.\\d+" | head -n 1`
CMD_OPTS=""

if [[ $IEX_NAME ]]
then
    NODE_NAME=`echo "$IEX_NAME" | sed -e "s/@ip/@$IP_ADDRESS/"`
    CMD_OPTS="$CMD_OPTS --name $NODE_NAME"
fi

if [[ $IEX_COOKIE ]]
then
    CMD_OPTS="$CMD_OPTS --cookie $IEX_COOKIE"
fi

cd /app

MIX_ENV=prod elixir $CMD_OPTS -pa _build/prod/consolidated -S mix server
