FROM caddy:2.2.1-builder-alpine AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM caddy:2.2.1-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
