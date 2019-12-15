#!/bin/sh
#

docker build -t microruntime:v2 -f Dockerfile .
docker tag microruntime:v2 172.30.1.1:5000/msrnamespace1/microruntime:v2
oc login -u developer -p developer
oc project msrnamespace1
docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
docker push 172.30.1.1:5000/msrnamespace1/microruntime:v2
