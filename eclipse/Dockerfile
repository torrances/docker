FROM craig/maven

MAINTAINER Craig Trim "craigtrim@gmail.com"

ENV ECLIPSE_HOME /opt/eclipse/luna

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update -qq && apt-get autoremove -y && apt-get install -qqy \
    wget 

RUN \
  mkdir -p $ECLIPSE_HOME && \
  cd $ECLIPSE_HOME && \
  wget http://mirrors.xmission.com/eclipse/technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz && \
  tar -zxvf eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz && \
  mv eclipse e && \
  mv e/* . && \
  rm -rf e

ENV PATH /opt/eclipse/luna/bin:$PATH