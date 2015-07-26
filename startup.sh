#!/bin/bash

sh /setup.sh

cd /app
MIX_ENV=prod elixir -pa _build/prod/consolidated -S mix server
