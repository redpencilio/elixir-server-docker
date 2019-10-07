FROM elixir:1.9-alpine

RUN mkdir /app; mix local.hex --force

COPY setup.sh /
COPY startup.sh /

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add grep

RUN mix local.rebar --force

ENV RUNNING_IN_DOCKER="true"
ENV DEVELOPMENT=""

CMD ["/bin/sh","startup.sh"]

EXPOSE 4000
EXPOSE 80
