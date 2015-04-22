################################################################
##
## PURPOSE:
## customized jenkins server with maven installed
## TODO: install maven and git plugin using docker, not on base ubuntu
## <https://github.com/cloudbees/jenkins-ci.org-docker>
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## 1. <none>
##
################################################################
FROM jenkins

MAINTAINER Craig Trim "craigtrim@gmail.com"

ENV MAVEN_HOME /usr/lib/apache/maven/3.3.1
ENV PATH /usr/lib/apache/maven/3.3.1/bin:$PATH

USER root

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update

RUN \
  mkdir -p $MAVEN_HOME && \
  cd $MAVEN_HOME && \
  wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz && \
  tar -zxvf apache-maven-3.3.1-bin.tar.gz && \
  mv apache-maven-3.3.1/* . && \
  rm -rf apache-maven-3.3.1

USER jenkins