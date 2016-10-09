FROM horizon-base

ARG MEMCACHE_PORT
ARG APACHE_PORT
ARG HORIZON_BRANCH

RUN \
  useradd --user-group horizon && \
  mkdir /home/horizon && \
  chown -R horizon: /home/horizon && \
  git clone https://github.com/openstack/horizon.git -b ${HORIZON_BRANCH:-master} /data && \
  cd /data && \
  pip install . && \
  echo '' > /etc/apache2/ports.conf

ADD memcached.conf /etc/memcached.conf
ADD ports.conf /etc/apache2/ports.conf
ADD openstack-dashboard.conf /etc/apache2/sites-enabled/000-default.conf
ADD local_settings.py /data/openstack_dashboard/local/local_settings.py

RUN \
  echo 'COMPRESS_OFFLINE = True' \
    >> /data/openstack_dashboard/local/local_settings.py && \
  sed -ir "s/Listen 80/Listen ${APACHE_PORT:-80}/g" /etc/apache2/ports.conf && \
  sed -ir "s/-p 11211/-p ${MEMCACHE_PORT:-11211}/g" /etc/memcached.conf && \
  sed -ir "s/127.0.0.1:11211/127.0.0.1:${MEMCACHE_PORT:-11211}/g" \
    /data/openstack_dashboard/local/local_settings.py && \
  cd /data && \
  ./run_tests.sh -V --compilemessages && \
  /usr/bin/python manage.py collectstatic --noinput --clear && \
  /usr/bin/python manage.py compress --force && \
  chown -R horizon.horizon /data/openstack_dashboard/local/ /data/static/

WORKDIR /data
VOLUME ["/data"]
EXPOSE 22 80 443 11211

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
