# file: /home/thierry/opec/Step1 - Verify dapr install/4 - Redis Config.ps1

# By default redis-cli connects to the server at 127.0.0.1 port 6379.
# To specify a different host name or an IP address

docker ps
docker exec -it dapr_redis redis-cli ping
docker exec -it dapr_redis redis-cli info
docker exec -it dapr_redis redis-cli
docker exec -it dapr_redis redis-cli --scan


$thisHostName = cat /etc/hostname
$thisHostNameIp = hostname -i

"OPEC Linux VM --> $thisHostName -- $thisHostNameIp" | Write-Host -ForegroundColor Blue

docker exec -it dapr_redis redis-cli -h $thisHostNameIp -p 6379

# If Redis instance is password protected
docker exec -it dapr_redis redis-cli -a password ping

# all comands
https://redis.io/commands
docker exec -it dapr_redis redis-cli
COMMAND



