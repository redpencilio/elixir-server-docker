#!/bin/sh
cd /app

yes | MIX_ENV=prod mix do deps.get, compile

MIX_ENV=prod mix compile.protocols
