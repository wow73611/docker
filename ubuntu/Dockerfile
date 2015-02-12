# Pull base image
FROM ubuntu:14.04
MAINTAINER wow73611 <wow73611@gmail.com>

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# Installation
RUN \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y curl vim wget && \
#  apt-get install -y openssh-server && \
  rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /root

# Set default command
CMD ["bash"]
