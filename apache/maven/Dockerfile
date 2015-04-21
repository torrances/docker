FROM    java:8

MAINTAINER  Craig Trim "craigtrim@gmail.com"

ENV MAVEN_HOME /usr/lib/apache/maven/3.3.1
ENV PATH /usr/lib/apache/maven/3.3.1/bin:$PATH

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update

RUN \
  mkdir -p $MAVEN_HOME && \
  cd $MAVEN_HOME && \
  wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz && \
  tar -zxvf apache-maven-3.3.1-bin.tar.gz && \
  mv apache-maven-3.3.1/* . && \
  rm -rf apache-maven-3.3.1