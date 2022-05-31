FROM redis:6-alpine

COPY redis.conf .

RUN --mount=type=secret,id=_env,dst=/etc/secrets/.env . /etc/secrets/.env

ENTRYPOINT ["redis-server", "./redis.conf"]
