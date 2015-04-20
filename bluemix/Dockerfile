FROM ubuntu

MAINTAINER  Craig Trim "craigtrim@gmail.com"

ENV DOCKER_TLS_VERIFY 1

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get \
    autoremove -y
  apt-get \
    update

# install python pip
RUN \
  apt-get install -y \
    build-essential \
    python-dev \
    python-pip

# install python setup-utils
RUN \
  wget https://bootstrap.pypa.io/ez_setup.py -O - | python

# install docker
RUN \
  apt-key adv \
    --keyserver hkp://keyserver.ubuntu.com:80 \
    --recv-keys \ 
    36A1D7869245C8950F966E92D8576A8BA88D21E9 && \
  sh -c 
    "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list" && \
  apt-get update && \
  apt-get install -y \
    lxc-docker
 
# install docker-compose
RUN \
  wget \
    https://github.com/docker/compose/releases/download/1.1.0/docker-compose-$(uname -s)-$(uname -m) && \
  mv docker-compose-$(uname -s)-$(uname -m) docker-compose && \
  chmod 777 \
    docker-compose && \
  mv docker-compose /usr/local/bin/

# install ice
RUN \
  apt-get install -y \
    curl && \
  curl -O \
    https://static-ice.ng.bluemix.net/icecli-2.0.zip && \
  pip install \
    icecli-2.0.zip

RUN \
  wget https://cli.run.pivotal.io/stable?release=debian64&version=6.11.0&source=github-rel && \
  mv stable\?release\=debian64 cf-cli_amd64.deb && \
  dpkg -i cf-cli_amd64.deb && \
  apt-get install -f -y && \
  rm cf-cli_amd64.deb

RUN \
  usermod -a -G docker $(whoami)