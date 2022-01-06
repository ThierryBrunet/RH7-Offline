# -- Pull dockers images from registries

# by: Thierry Brunet
# date: 206/01/2022

go version

dir $env:HOMEPATH\go
dir $env:HOMEPATH\go\bin
dir $env:HOMEPATH\go\pkg

# Set GOPROXY environment
$env:GOPROXY = "https://goproxy.io,direct"

cd "C:\Hyper-V\RH7 Offline\GoLang\go-container-registry"
go install .\...

# Run the binaries of commands that have been built
# ------------------------------------------------
crane pull --help

crane pull hello-world c:\docker\crane-pull\hello-world.tar
crane pull redis c:\docker\crane-pull\redis.tar
crane pull alpine c:\docker\crane-pull\alpine.tar
crane pull daprio/dapr c:\docker\crane-pull\daprio-dapr.tar
crane pull openzipkin/zipkin c:\docker\crane-pull\openzipkin-zipkin.tar
crane pull k8s.gcr.io/etcd:3.4.13-0 c:\docker\crane-pull\k8s-gcr-io-etcd.tar

# Verify with docker
docker load --input c:\docker\crane-pull\hello-world.tar
docker run hello-world   # Works !!!!

docker load --input c:\docker\crane-pull\redis.tar
docker load --input c:\docker\crane-pull\alpine.tar
docker load --input c:\docker\crane-pull\daprio-dapr.tar
docker load --input c:\docker\crane-pull\openzipkin-zipkin.tar
docker load --input c:\docker\crane-pull\k8s-gcr-io-etcd.tar

#region -- Playground with security tokens
######################
''###  PLAYGROUND ####
######################

#region - docker login -- clear text creds
# ---------
''# quay.io
# ---------

docker login quay.io -u thierrybrunet-1 -p xxxx
echo quay.io | docker-credential-desktop get
{"ServerURL":"quay.io","Username":"thierrybrunet_1","Secret":"xxxx"}

docker logout quay.io


# --------------------
''# registry.redhat.io
# --------------------

docker login registry.redhat.io -u thierrybrunet-1 -p xxxx
echo registry.redhat.io | docker-credential-desktop get
{"ServerURL":"registry.redhat.io","Username":"thierrybrunet-1","Secret":"xxxxx"}

docker logout registry.redhat.io


# ------------
''# docker hub
# ------------

https://www.systutorials.com/docs/linux/man/1-docker-login/

docker login -u thierrybrunet -p xxx   # works !!!
docker login registry-1.docker.io -u thierrybrunet -p xxxx # works too !!!
echo registry-1.docker.io | docker-credential-desktop get
{"ServerURL":"registry-1.docker.io","Username":"thierrybrunet","Secret":"xxxx"}

docker logout registry-1.docker.io

#endregion

#region -- ~/.docker/config.json
######################################################
''##### all credentials for ~/.docker/config.json ####
######################################################

https://access.redhat.com/terms-based-registry/#/token/opec/info
https://quay.io/user/thierrybrunet_1?tab=robots
https://hub.docker.com/settings/security

# $DockerAuth_Wsl = @"
# {
#     "auths": {
#             "https://index.docker.io/v1/": {},
#             "quay.io": {},
#             "registry-1.docker.io": {},
#             "registry.redhat.io": {}
#     },
#     "credsStore": "desktop",
#     "experimental": "enabled",
#     "stackOrchestrator": "swarm"
# }
# "@

$DockerAuth = @"
{
    "auths": {
            "https://index.docker.io/v1/": {},
            "registry.redhat.io": {
                "auth": "MTA4OTkyNjR8b3BlYzpleUpoYkdjaU9pSlNVelV4TWlKOS5leUp6ZFdJaU9pSm1OakJpTkdVd05qVXhZekEwTURJd1ltWXpNV1E1WW1Wa04yRTBPV00xWlNKOS5ZZmVZV2RfX0pUNjUtem5fUUhZNWNZMnpDdFNfRjBZSXRsQjBKTEZRT1hKeFFzSnBKWS1Uc2F0bF9DamNmUThON25wY3F5b1k0RjdwVjg2R1lWSnNQRXZ0anE0TkptYXJVM1pzcGczX2JiVkNjWWZ2ckdtVmdwQ2dXR0N6Q0VqbldOVHJsdDN1N3doUEg5LTM5QmNlQnhvV2dzenhOTEFlYXZjNG5Ud0YzdHhDOXNEd3hWZFBPMHJmY0c0dTJnRzQyM0hsaE5XcXJQQ0dTT1Fwb29IMllza2Zfa1JsSGFhazJJZ3EzZzV3UWlFdkdtMW1iQXFDVkkxWUZncF9QVkp5VTJ3LXlhbXRJX1V2T2xvQXlVbUZGZk5QZkN1S202VDlULWFxVXZBS016OG44RTRUNGRpVUF3QUY2MnRTX0hzTTJfRXVueFdISW9rUFNqLWhqd283NXAtQXNPQ3ZTdk9GbWpnN0RINTRueDl1dkpvS2g1VksyNE1ZSkg3LVpSb095aGZndGhpNDdrbWdrUEVIeC1fSUx2RWI0LTVDTjBrWlRuWXV3YlNFYlI3TTRJMG16aE9rb3dCNFNDVE9lWjJRd0dfNXNNdUcwUnRoZWNPZEd3bDNBZlZuR3lJMWVnbFAtNk54ekZfaThtOHNpSE5SZHJRWlVwUFVvbVhxSHVVRWNNTkdHaWZRQ2JBZzRRYVNMNXphcHBORk4zbXY3OEdEcl92SzU0bG9wNFZKMl9RQ3Z0ZnAwN2VtN1dFaHFTN3RqT1JCVWJvUnh5cFBlYUdySmNlMDhScWdSNU44OWhZbWVtLTJienF4SVNzTy1xb1N1c25ISWlBdFlnRmU0ZGlNVnNwaDdHRkx4c2dFZUk2SzhpRnlwb2RXb1U4SFZJQ0Q2QkYzUlpjWGowOA=="
            },
            "quay.io": {
                "auth": "dGhpZXJyeWJydW5ldF8xK29wZWM6MUhUTDlONVc4Vkw2UExONktURlNPNFRNSlFGOTg4TUkzRjM0RUQ0TDVYWlNORTNLWDZFNEZTREhGTzdWMDdWVA==",
                "email": ""
            },
            "registry-1.docker.io": {
                "Seed": "Ob8dwc0pIQmpbpTPMUtZ9Q=="
            }
    }
}
"@

$DockerAuth | out-file -FilePath "~/.docker/config.json"  -Force
Get-Content ~/.docker/config.json

#endregion

#region -- Tokenized docker logins
###################################
''#### Tokenized docker logins ####
###################################

# -- registry.redhat.io
https://access.redhat.com/terms-based-registry/#/token/opec/info
docker login -u='10899264|opec' -p=eyJhbGciOiJSUzUxMiJ9.eyJzdWIiOiJmNjBiNGUwNjUxYzA0MDIwYmYzMWQ5YmVkN2E0OWM1ZSJ9.YfeYWd__JT65-zn_QHY5cY2zCtS_F0YItlB0JLFQOXJxQsJpJY-Tsatl_CjcfQ8N7npcqyoY4F7pV86GYVJsPEvtjq4NJmarU3Zspg3_bbVCcYfvrGmVgpCgWGCzCEjnWNTrlt3u7whPH9-39BceBxoWgszxNLAeavc4nTwF3txC9sDwxVdPO0rfcG4u2gG423HlhNWqrPCGSOQpooH2Yskf_kRlHaak2Igq3g5wQiEvGm1mbAqCVI1YFgp_PVJyU2w-yamtI_UvOloAyUmFFfNPfCuKm6T9T-aqUvAKMz8n8E4T4diUAwAF62tS_HsM2_EunxWHIokPSj-hjwo75p-AsOCvSvOFmjg7DH54nx9uvJoKh5VK24MYJH7-ZRoOyhfgthi47kmgkPEHx-_ILvEb4-5CN0kZTnYuwbSEbR7M4I0mzhOkowB4SCTOeZ2QwG_5sMuG0RthecOdGwl3AfVnGyI1eglP-6NxzF_i8m8siHNRdrQZUpPUomXqHuUEcMNGGifQCbAg4QaSL5zappNFN3mv78GDr_vK54lop4VJ2_QCvtfp07em7WEhqS7tjORBUboRxypPeaGrJce08RqgR5N89hYmem-2bzqxISsO-qoSusnHIiAtYgFe4diMVsph7GFLxsgEeI6K8iFypodWoU8HVICD6BF3RZcXj08 registry.redhat.io

# -- quay.io
https://quay.io/user/thierrybrunet_1?tab=robots
docker login -u="thierrybrunet_1+opec" -p="1HTL9N5W8VL6PLN6KTFSO4TMJQF988MI3F34ED4L5XZSNE3KX6E4FSDHFO7V07VT" quay.io

# -- registry-1.docker.io
docker login -u thierrybrunet -p=ba42ffff-1e8c-4e7c-8492-68bcfd48d742
https://hub.docker.com/settings/security

#endregion

#endregion