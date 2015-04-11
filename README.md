# Elixir server docker

Docker configuration for running an [Elixir](http://elixir-lang.org/) server

## Running your Elixir server
    docker run --name my-elixir-server \
        -v /path/to/mix/folder:/app \
        -d madnificent/elixir-server

## What it does
This will get all dependencies, compile them and run a production-build of your server with `mix server`.

The commands boild down to:

    MIX_ENV=prod mix do deps.get, compile
    MIX_ENV=prod mix compile.protocols
    MIX_ENV=prod elixir -pa _build/prod/consolidated -S mix server
