################################################################
##
## PURPOSE:
## build and launch a jenkins container
##
## HISTORY:
## 10:05 AM 4/22/2015 created 
##
## PREREQUSITES:
## 1. docker > 1.4
## 2. build craig/maven <https://github.com/torrances/docker/tree/master/apache/maven>
##
################################################################
mkdir ~/jpr

sudo docker build \
  --no-cache -t \
  craig/jenkins .

sudo docker run \
  -p 8040:8080 \
  -v ~/jpr:/var/jenkins_home \
  craig/jenkins