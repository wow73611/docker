FROM wow73611/ubuntu
MAINTAINER wow73611 <wow73611@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt-get update -y && \
  apt-get install -y python2.7 python2.7-dev python-pip git
RUN pip install --upgrade pip
RUN pip install virtualenv

CMD ["/bin/bash"]
