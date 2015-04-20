FROM dind

MAINTAINER  Craig Trim "craigtrim@gmail.com"

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update -qq && apt-get autoremove -y && apt-get install -qqy \
    build-essential \
    python-dev \
    python-pip \
    wget 

# install python setup-utils
RUN \
  wget https://bootstrap.pypa.io/ez_setup.py -O - | python

# install IBM ICE
RUN \
  curl -O https://static-ice.ng.bluemix.net/icecli-2.0.zip && \
  pip install icecli-2.0.zip

# install cloudfoundry command line interface
RUN \
  $(wget -O cf-cli_amd64.deb https://cli.run.pivotal.io/stable?release=debian64&version=6.11.0&source=#github-rel) && \ 
  dpkg -i cf-cli_amd64.deb && \
  apt-get install -f -y
  #rm cf-cli_amd64.deb

# install docker-compose
RUN \
  wget https://github.com/docker/compose/releases/download/1.1.0/docker-compose-$(uname -s)-$(uname -m) && \
  mv docker-compose-$(uname -s)-$(uname -m) docker-compose && \
  chmod 777 docker-compose && \
  mv docker-compose /usr/local/bin/

# misc commands
RUN \
  usermod -a -G docker $(whoami) && \
  sh -c 'echo "export DOCKER_TLS_VERIFY=1" >> /etc/environment'