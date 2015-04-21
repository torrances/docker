FROM craig/maven

MAINTAINER Craig Trim "craigtrim@gmail.com"

ENV PROJ	projects
ENV GIT 	https://github.com/torrances

ENV WS 		/workspaces
ENV WSP 	$WS/public

ENV WSBOM	$WSP/bom
ENV WSBAS	$WSP/bash
ENV WSDOC	$WSP/docker
ENV	WSJC	$WSP/java-commons/$PROJ

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update -qq && apt-get autoremove -y && apt-get install -qqy \
    wget 

# bom
RUN \
  mkdir -p $WSBOM && \
  cd $WSBOM && \
  git init && \
  git remote add wsbom $GIT/bom && \
  git pull -u wsbom master && \
  cd build && \
  mvn clean install

# java-commons
RUN \
  mkdir -p $WSJC && \
  cd $WSJC && \
  git init && \
  git remote add wsjc $GIT/java-commons && \
  git pull -u wsjc master && \
  mvn clean install

# bash
RUN \
  mkdir -p $WSBAS && \
  cd $WSBAS && \
  git init && \
  git remote add wsbas $GIT/bash && \
  git pull -u wsbas master

# docker
RUN \
  mkdir -p $WSDOC && \
  cd $WSDOC && \
  git init && \
  git remote add wsdoc $GIT/docker && \
  git pull -u wsdoc master