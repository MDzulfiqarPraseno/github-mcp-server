FROM ghcr.io/github/github-mcp-server:v1.0.2
EXPOSE 8080
CMD ["http", "--port", "8080"]
