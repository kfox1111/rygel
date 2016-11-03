FROM ubuntu:xenial
MAINTAINER Kevin Fox "Kevin.Fox@pnnl.gov"

RUN \
  apt-get update; \
  apt-get install -y software-properties-common python-software-properties; \
  add-apt-repository -y ppa:yg-jensge/gupnp; \
  apt-get update; \
  apt-get install -y rygel;

CMD rygel -c /etc/rygel.conf
