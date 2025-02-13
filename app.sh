#!/bin/bash
cat /usr/local/share/ca-certificates/* > ~/ca.crt
while true; do
    
    curl 'https://credhub.service.cf.internal:8844/api/v1/interpolate' -i -X POST \
    --capath ~/ca.crt \
    --key /etc/cf-instance-credentials/instance.key \
    --cert /etc/cf-instance-credentials/instance.crt \
    -H 'Content-Type: application/json' \
    -d '{
  "test":"test" 
}'
    echo "Curl date: $(date)"
    sleep 10
done