FROM wow73611/ubuntu
MAINTAINER wow73611 <wow73611@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

WORKDIR /etc/nginx
EXPOSE 80
CMD ["nginx"]
