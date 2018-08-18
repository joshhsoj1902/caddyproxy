FROM hairyhenderson/caddyproxy

RUN apk update && apk add ca-certificates && update-ca-certificates && apk add openssl

COPY Caddyfile.tmpl /srv/Caddyfile.tmpl

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["caddy"]
