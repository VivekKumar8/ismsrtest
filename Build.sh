#!/bin/sh
#

docker build -t microruntime:v2 -f Dockerfile .
docker tag microruntime:v2 172.30.1.1:5000/"${PROJECT_NAME}"/microruntime:v2
oc login -u developer -p developer
oc new-project ${PROJECT_NAME} --description="${DESCRIPTION}" --display-name="${DESCRIPTION}"
oc project ${PROJECT_NAME}
docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
docker push 172.30.1.1:5000/"${PROJECT_NAME}"/microruntime:v2
