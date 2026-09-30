#!/bin/sh
/usr/local/bin/github-mcp-server http --port 8081 --listen-host 127.0.0.1 &
exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
