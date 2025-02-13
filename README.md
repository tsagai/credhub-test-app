# credhub-test-app
Credhub Testing app that sends POST request to the credhub interpolate endpoint (https://credhub.service.cf.internal:8844/api/v1/interpolate) every second as a process.

## Deployment
1. Clone this repo:
```bash
git clone https://github.com/tsagai/credhub-test-app.git
```

2. Change into the directory
```bash
cd credhub-test-app/
```

3. Deploy application
```bash
cf push -u process
```
