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

## Optional configuration

You can set the following arguments:
- `IEX_COOKIE` sets the default cookie for connecting
- `IEX_NAME` sets the name for connecting (@ip will be replaced by the docker's ip address)

The combination of these allows you to connect another erlang node to this one.  See http://benjamintan.io/blog/2014/05/25/connecting-elixir-nodes-on-the-same-lan/