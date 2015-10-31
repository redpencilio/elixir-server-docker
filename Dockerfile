FROM trenpixster/elixir:1.1.1

RUN mkdir /app; mix local.hex --force

COPY setup.sh /
COPY startup.sh /

CMD sh startup.sh

EXPOSE 4000
EXPOSE 80