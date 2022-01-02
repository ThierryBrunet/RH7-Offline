# Use the Dapr API

# Step 1: Run the Dapr sidecar

# --> pwsh1
dapr run --app-id myapp --dapr-http-port 3500


# Step 2: Save state

# --> pwsh2
curl -X POST -H "Content-Type: application/json" -d '[{ "key": "name", "value": "Bruce Wayne"}]' http://localhost:3500/v1.0/state/statestore
Invoke-RestMethod -Method Post -ContentType 'application/json' -Body '[{ "key": "name", "value": "Bruce Wayne"}]' -Uri 'http://localhost:3500/v1.0/state/statestore'


# Step 3: Get state

# --> pwsh session
curl http://localhost:3500/v1.0/state/statestore/name
Invoke-RestMethod -Uri 'http://localhost:3500/v1.0/state/statestore/name'


# Step 4: See how the state is stored in Redis

docker exec -it dapr_redis redis-cli

# List the redis keys to see how Dapr created a key value pair (with the app-id you provided to dapr run as a prefix to the key):
keys *
hgetall "myapp||name"
exit

# also check using VS Code REDIS extension

# Stop the dapr app
dapr stop myapp
