FROM trenpixster/elixir:1.4.4

RUN mkdir /app; mix local.hex --force

COPY setup.sh /
COPY startup.sh /

CMD ["/bin/bash","startup.sh"]

EXPOSE 4000
EXPOSE 80