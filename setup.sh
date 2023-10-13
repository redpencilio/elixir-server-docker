#!/bin/sh
cd /app

echo "Getting deps"
yes | MIX_ENV=prod mix deps.get

echo "Fancy compile"
MIX_ENV=prod elixir $CMD_OPTS -pa _build/prod/consolidated -S mix compile

# echo "Compiling deps"
yes | MIX_ENV=prod mix deps.compile
echo "Compiling app"
yes | MIX_ENV=prod mix compile

echo "Compiling protocols"
MIX_ENV=prod mix compile.protocols

echo "Done setting up"
