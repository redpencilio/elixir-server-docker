FROM trenpixster/elixir:1.3.2

RUN mkdir /app; mix local.hex --force

COPY setup.sh /
COPY startup.sh /

CMD ["/bin/bash","startup.sh"]

EXPOSE 4000
EXPOSE 80