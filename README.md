# Docker Cloudflare DDNS

A simple docker container that will update a cloudflare DNS record to point to
the running machine's current public IP every minute.

You'll need to supply the following environment variables:

- `CLOUDFLARE_API_TOKEN`: a valid cloudflare API token with permissions to edit
the required dns record.
- `CLOUDFLARE_DDNS_URL`: the url that should be updated.

### Docker Compose
You can either build and run directly by adding the required values to a .env
file, then running: `docker compose up -d`

### Run Docker directly

You can also run the version from docker hub with:

```docker run -e CLOUDFLARE_API_TOKEN=<cloudflare_token> -e CLOUDFLARE_DDNS_URL=<url_to_update hackermuffin/cloudflare-ddns```

