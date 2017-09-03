#!/bin/sh

# cf-cache-clear.sh
# @author Seong Yong-ju ( @sei40kr )

curl -X DELETE "https://api.cloudflare.com/client/v4/zones/${CF_ZONE_ID}/purge_cache" \
  -H "X-Auth-Email: ${CF_EMAIL}" \
  -H "X-Auth-Key: ${CF_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{"purge_everything":true}'
