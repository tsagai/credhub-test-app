#!/bin/bash
while true; do
    echo "Curl date: $(date)"
    curl 'https://example.com/api/v1/interpolate' -i -X POST \
    -H 'Content-Type: application/json' \
    -H 'Authorization: Bearer [some-token]' \
    -d '{
  "service-name": [
    {
      "credentials": {
        "credhub-ref": "/some-credhub-ref"
      },
      "label": "service-name",
      "other-metadata": "some-other-metadata"
    }
  ]
}'
    sleep 1
done