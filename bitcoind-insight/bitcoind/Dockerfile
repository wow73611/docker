FROM ubuntu:14.04

WORKDIR /root

RUN \
  apt-get update -y && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y python-software-properties && \
  apt-get install -y git vim wget curl net-tools supervisor

RUN \
  apt-add-repository -y ppa:bitcoin/bitcoin && \
  apt-get update -y && \
  apt-get install -y bitcoind && \
  mkdir /root/.bitcoin

COPY bitcoin.conf /root/.bitcoin/
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
EXPOSE 8332
EXPOSE 8333
