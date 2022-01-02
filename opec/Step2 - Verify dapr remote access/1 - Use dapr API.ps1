
#region -- Run this in Linux VM
#++++++++++++++++++++++++++++++

$LinuxHostName = cat /etc/hostname
$LinuxHostNameIp = hostname -i

"OPEC Linux VM --> $LinuxHostName -- $LinuxHostNameIp" | Write-Host -ForegroundColor Blue

dapr list

# Step 1: Run the Dapr sidecar
# ----------------------------

# --> pwsh1
dapr run --app-id myapp --dapr-http-port 3500

dapr list

    # APP ID  HTTP PORT  GRPC PORT  APP PORT  COMMAND  AGE  CREATED              PID
    # myapp   3500       35329      0                  10s  2022-01-02 11:03.40  1439

#endregion


#region -- Run this from Windows VM (WS2012@developer | WS2016@DevTest)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

$LinuxHostName = "rh7xx"
$LinuxHostNameIp = "172.27.167.168"

# Step 2: Save state
# ------------------

# --> pwsh2
$body1 = @{
    "key" = "name1"
    "value" = "Thierry Brunet 1"
}
$body2 = @{
    "key" = "name2"
    "value" = "Thierry Brunet 2"
}
$bodyJson1 = (ConvertTo-Json $Body1 -compress).replace('"', '\"')
$bodyJson2 = ConvertTo-Json $Body2 -compress
$uri = "http://$($LinuxHostNameIp):3500/v1.0/state/statestore"
curl -X POST -H "Content-Type: application/json" -d "[$bodyJson1]" $uri
# Invoke-RestMethod -Method Post -ContentType 'application/json' -Body '[{ "key": "name", "value": "Thierry Brunet2"}]' -Uri "http://$($LinuxHostNameIp):3500/v1.0/state/statestore"
Invoke-RestMethod -Method Post -ContentType 'application/json' -Body "[$BodyJson2]" -Uri $uri


# Step 3: Get state
# -----------------

# --> pwsh session
curl http://$($LinuxHostNameIp):3500/v1.0/state/statestore/name
curl http://$($LinuxHostNameIp):3500/v1.0/state/statestore/name1
curl http://$($LinuxHostNameIp):3500/v1.0/state/statestore/name2
Invoke-RestMethod -Uri "http://$($LinuxHostNameIp):3500/v1.0/state/statestore/name"
Invoke-RestMethod -Uri "http://$($LinuxHostNameIp):3500/v1.0/state/statestore/name1"
Invoke-RestMethod -Uri "http://$($LinuxHostNameIp):3500/v1.0/state/statestore/name2"


# Step 4: See how the state is stored in Redis
# -------------------------------------------

# Powershell remoting
test-path "~\.ssh\id_rsa_redhat9"
$session = New-PSSession -HostName $LinuxHostNameIp -KeyFilePath "~\.ssh\id_rsa_redhat9" -username root
Invoke-Command $session -ScriptBlock { Get-Process pwsh }
Invoke-Command $session -ScriptBlock { docker ps }
Invoke-Command $session -ScriptBlock { docker exec dapr_redis redis-cli ping }
Invoke-Command $session -ScriptBlock { docker exec dapr_redis redis-cli info }
Invoke-Command $session -ScriptBlock { docker exec dapr_redis redis-cli keys "*" }
Invoke-Command $session -ScriptBlock { docker exec dapr_redis redis-cli --scan }
Invoke-Command $session -ScriptBlock { docker exec dapr_redis redis-cli hgetall "myapp||name" }
Invoke-Command $session -ScriptBlock { docker exec dapr_redis redis-cli hgetall "orderprocessing||order_1" }
Invoke-Command $session -ScriptBlock { docker exec dapr_redis redis-cli hgetall "orderprocessing||order_2" }

Enter-PSSession $session
dir /
docker exec dapr_redis redis-cli --scan
docker exec dapr_redis redis-cli hgetall "myapp||name"
docker exec dapr_redis redis-cli hgetall "orderprocessing||order_1"
docker exec dapr_redis redis-cli hgetall "orderprocessing||order_2"
exit

Get-PSSession | Remove-PSSession

# also check using VS Code REDIS extension

# Stop the dapr app
dapr stop myapp

#endregion
