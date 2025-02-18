#!/bin/bash
cat /usr/local/share/ca-certificates/* > ~/ca.crt
echo Todays Date: $(date)
echo CA certs: 
cat  ~/.ca.crt
echo Instance Cert:
cat /etc/cf-instance-credentials/instance.crt

while true; do
    
    curl 'https://credhub.service.cf.internal:8844/api/v1/interpolate' -vi -X POST \
    --capath ~/ca.crt \
    --key /etc/cf-instance-credentials/instance.key \
    --cert /etc/cf-instance-credentials/instance.crt \
    -H 'Content-Type: application/json' \
    -d '{
  "test":"test" 
}'
  sleep 10
done
