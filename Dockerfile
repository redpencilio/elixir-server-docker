FROM elixir:1.6.5

RUN mkdir /app; mix local.hex --force

COPY setup.sh /
COPY startup.sh /

CMD ["/bin/bash","startup.sh"]

EXPOSE 4000
EXPOSE 80
