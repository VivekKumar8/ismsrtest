#!/bin/sh
#

oc new-project msrdemo --description="msrdemo" --display-name="msrdemo"
docker build -t microruntime:v2 -f Dockerfile .
docker tag microruntime:v2 172.30.1.1:5000/msrdemo/microruntime:v2
echo "100"
oc login -u developer -p developer
echo "101"
echo $(oc whoami -t)
echo "1001"
oc project msrdemo
echo "102"
docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
echo "103"
docker push 172.30.1.1:5000/msrdemo/microruntime:v2
