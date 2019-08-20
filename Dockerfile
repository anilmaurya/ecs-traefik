FROM      traefik:v1.7-alpine

COPY      traefik_ecs.toml /etc/traefik/traefik.toml
RUN touch /etc/traefik/acme.json
RUN chmod +x /etc/traefik/acme.json
