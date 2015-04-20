FROM dind

MAINTAINER  Craig Trim "craigtrim@gmail.com"

ENV DOCKER_TLS_VERIFY 1

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update -qq && apt-get autoremove -y && apt-get install -qqy \
    wget 

# install docker-compose
RUN \
  wget https://github.com/docker/compose/releases/download/1.1.0/docker-compose-$(uname -s)-$(uname -m) && \
  mv docker-compose-$(uname -s)-$(uname -m) docker-compose && \
  chmod 777 docker-compose && \
  mv docker-compose /usr/local/bin/