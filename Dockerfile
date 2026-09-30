FROM ghcr.io/github/github-mcp-server:v1.0.2 AS mcpserver

FROM caddy:2-alpine
COPY --from=mcpserver /server/github-mcp-server /usr/local/bin/github-mcp-server
COPY Caddyfile /etc/caddy/Caddyfile
COPY start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 8080
CMD ["/start.sh"]
