#!/bin/sh
echo "[start.sh] launching github-mcp-server on port 8081"
/usr/local/bin/github-mcp-server http --port 8081 2>&1 | sed "s/^/[mcp-server] /" &
sleep 2
echo "[start.sh] launching caddy on port 8080"
exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
