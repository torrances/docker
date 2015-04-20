FROM ubuntu

MAINTAINER  Craig Trim "craigtrim@gmail.com"

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update -qq && apt-get autoremove -y && apt-get install -qqy \
    curl \
    wget \    
    build-essential \
    python-dev \
    python-pip \
    apt-transport-https \
    ca-certificates \
    lxc \
    iptables

# install python setup-utils
RUN \
  wget https://bootstrap.pypa.io/ez_setup.py -O - | python