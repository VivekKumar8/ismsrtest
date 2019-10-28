#!/bin/sh
#

sudo docker build -t microruntime:v2 -f Dockerfile .
sudo docker tag microruntime:v2 172.30.1.1:5000/msrnamespace/microruntime:v2
oc login -u developer -p manage
oc project msrnamespace
sudo docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
sudo docker push 172.30.1.1:5000/msrnamespace/microruntime:v2
