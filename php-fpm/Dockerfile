FROM wow73611/nginx
MAINTAINER wow73611 <wow73611@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV APP_NAME    www
ENV APP_USER    www-data
ENV APP_GROUP   www-data

RUN \
  apt-get update && \
  apt-get supervisor
  apt-get install -y php5 php5-fpm php5-cli php5-curl php5-json php-pear && \
  apt-get install -y php5-mcrypt php5-sqlite php5-pgsql php5-mysql

RUN sed -i '/daemonize /c daemonize = no' /etc/php5/fpm/php-fpm.conf
ADD www.conf /etc/php5/fpm/pool.d/www.conf
RUN sed -i '/^listen /c \
listen = 0.0.0.0:9000' /etc/php5/fpm/pool.d/www.conf
RUN sed -i 's/^listen.allowed_clients/;listen.allowed_clients/' /etc/php5/fpm/pool.d/www.conf
RUN mkdir -p /srv/http && \
    echo "<?php phpinfo(); ?>" > /srv/http/index.php && \
    chown -R www-data:www-data /srv/http

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
WORKDIR /etc/supervisor/conf.d
CMD ["supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
