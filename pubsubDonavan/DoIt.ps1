# https://www.youtube.com/watch?v=PwA6UbeneE4

cd C:\dapr\pubsubDonavan
mkdir C:\dapr\pubsubDonavan\components

@"
apiVersion: dapr.io/v1alpha1
kind: Component
metadata:
  name: pubsub
spec:
  type: pubsub.redis
  version: v1
  metadata:
  - name: redisHost
    value: localhost:6379
  - name: redisPassword
    value: ""
"@ | Out-File -Path .\components\pubsub.yaml -Force

@"
apiVersion: dapr.io/v1alpha1
kind: Subscription
metadata:
  name: myevent-subscription
spec:
  topic: mytopic
  route: /process
  pubsubname: pubsub
scopes:
- sub
"@ | Out-File -Path .\components\subscription.yaml

# Publisher
cd C:\dapr\pubsubDonavan
dotnet new console -n pub

# Subscriber
cd C:\dapr\pubsubDonavan
dotnet new webapi --no-https -n sub

# Touchup
Remove-Item .\sub\WeatherForecast.cs
Rename-Item .\sub\Controllers\WeatherForecastController.cs ProcessController.cs


# modify code as detailled by Donavan in his video



# pwsh 1  -- start subscriber
cd C:\dapr\pubsubDonavan\sub
# dapr run --app-id opecsub --app-port 50000 --components-path C:\dapr\pubsubDonavan\components -- dotnet run --urls http://*:50000
dapr run --app-id opecsub --app-port 50000 --dapr-http-port 3501 --components-path C:\dapr\pubsubDonavan\components -- dotnet run --urls http://*:50000


# pwsh 2 -- start publisher
cd C:\dapr\pubsubDonavan\pub
dapr run --app-id opecpub --dapr-http-port 3502 --components-path C:\dapr\pubsubDonavan\components -- dotnet run


# pwsh 3 -- stop all
dapr stop opecsub opecpub


# pwsh 3 -- publish with Dapr CLI
dapr publish --publish-app-id opecsub --pubsub opecpubsub --topic myopetopic1 --data '{"orderId": "100"}'
dapr list


# pwsh 3 -- Publish with Powershell
$hello = '{\"OpeTestMessage\": \"Hello ATO word !!!!\"}'
$hello = '{"OpeTestMessage": "Hello ATO word !!!!"}'
$hello
Invoke-RestMethod -method POST -uri "http://localhost:3501/v1.0/publish/opecpubsub/myopetopic1"  -body $hello -contentType "application/json"
Invoke-RestMethod -Method Post  -Uri "http://localhost:3501/v1.0/publish/opecpubsub/myopetopic1" -Body '{"orderId": "100"}'-ContentType 'application/json'


# pwsh 3 -- Check environment variables
get-childitem Env:
[System.Environment]::GetEnvironmentVariables()
[System.Environment]::GetEnvironmentVariables('Machine')
[System.Environment]::GetEnvironmentVariables('User')
[System.Environment]::GetEnvironmentVariables('Process')
[System.Environment]::GetEnvironmentVariable('DAPR_HTTP_PORT')
[System.Environment]::GetEnvironmentVariable('DAPR_HTTP_PORT', 'Machine')
[System.Environment]::GetEnvironmentVariable('DAPR_HTTP_PORT', 'Process')
[System.Environment]::GetEnvironmentVariable('DAPR_HTTP_PORT', 'User')
[System.Environment]::GetEnvironmentVariable('appdata')

get-childitem Env:DAPR_HTTP_PORT

$daprPort = $env:DAPR_HTTP_PORT

