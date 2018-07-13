FROM elixir:1.6.5-alpine

RUN mkdir /app; mix local.hex --force

COPY setup.sh /
COPY startup.sh /

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add grep

RUN mix local.rebar --force

ENV DEVELOPMENT=""

CMD ["/bin/sh","startup.sh"]

EXPOSE 4000
EXPOSE 80
