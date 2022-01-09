# /home/thierry/projects/dapr-sdk/dotnet-hello/DoIt.ps1

dotnet
$env:PATH = $env:PATH + ":/usr/share/dotnet"
dotnet


# Option 1 -- ASPNET web app
# --------------------------
cd /home/thierry/projects/dapr-sdk/dotnet-hello
dotnet new webapp -o MyWebApp --no-https

cd MyWebApp
dotnet watch

# Option 2 -- Console
# -------------------
cd /home/thierry/projects/dapr-sdk/dotnet-hello
dotnet new console -o MyApp

cd MyApp
dotnet run


# Option 3 -- REST API / WebAPI
# -----------------------------
https://docs.microsoft.com/en-us/learn/modules/build-web-api-aspnet-core/3-exercise-create-web-api

dotnet --list-sdks
cd /home/thierry/projects/dapr-sdk/dotnet-hello
mkdir MyWebAPI
cd MyWebAPI
dotnet new webapi -f net6.0

# TODO -- Hello WebApi-RestApi

dotnet run



# Option 4 -- Blazor
# -------------------
# TODO -- Blazor Hello-World



# Option 5 - Kestrel Mignon  (Windows Service / Linux daemon)
# -----------------------------------------------------------
# TODO -- Kestrel Hello-World



# Option 6 - Docker container
# -----------------------------------------------------------
# TODO -- Docker Hello-World

