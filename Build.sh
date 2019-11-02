#!/bin/sh
#

oc new-build --name microruntime:v2 --dockerfile='-'
oc microruntime:v2 172.30.1.1:5000/msrnamespace/microruntime:v2
oc login -u developer -p manage
oc project msrnamespace
docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
docker push 172.30.1.1:5000/msrnamespace/microruntime:v2
