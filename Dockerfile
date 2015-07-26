FROM msaraiva/elixir-dev:1.0.5

RUN mkdir /app; mix local.hex --force

COPY startup.sh /

CMD sh startup.sh

EXPOSE 4000
EXPOSE 80