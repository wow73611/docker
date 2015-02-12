# Pull base image
FROM wow73611/ubuntu
MAINTAINER wow73611 <wow73611@gmail.com>

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# Installation
RUN \
  apt-get update && \
  apt-get install -y python-software-properties software-properties-common && \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Set working directory
WORKDIR /etc/nginx

# Set default command
CMD ["nginx"]

# Expose ports
EXPOSE 80
