FROM ubuntu:14.04

ARG PASSWORD

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN \
  locale-gen en_US.UTF-8 && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y --no-install-recommends \
    git ca-certificates openssh-server supervisor \
    python2.7 python2.7-dev python-setuptools \
    build-essential libssl-dev libffi-dev python-dev \
    wget curl gettext apache2 libapache2-mod-wsgi \
    memcached python-memcache && \
  easy_install pip virtualenv && \
  mkdir /var/run/sshd && \
  echo "root:${PASSWORD:-root}" | chpasswd && \
  echo 'PermitRootLogin yes' > /etc/ssh/sshd_config && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 80 443 11211

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
