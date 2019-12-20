#!/bin/sh
#

docker build -t microruntime:v2 -f Dockerfile .
oc new-project msrdemo --description="msrdemo" --display-name="msrdemo"
docker tag microruntime:v2 172.30.1.1:5000/msrdemo/microruntime:v2
oc login -u developer -p developer
oc project msrdemo
docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
docker push 172.30.1.1:5000/msrdemo/microruntime:v2
