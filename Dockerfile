FROM nifty/elixir

RUN mkdir /app; mix local.hex --force

COPY startup.sh /

CMD sh startup.sh

EXPOSE 4000
