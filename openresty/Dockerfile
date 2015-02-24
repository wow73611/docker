FROM wow73611/ubuntu
MAINTAINER wow73611 <wow73611@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV OPENRESTY_VERSION 1.7.7.1

RUN \
  apt-get update -y && \
  apt-get install -y libreadline-dev libncurses5-dev libpcre3-dev libssl-dev && \
  apt-get install -y perl make unzip luarocks lua5.1 liblua5.1-dev git

RUN \
  wget http://openresty.org/download/ngx_openresty-$OPENRESTY_VERSION.tar.gz && \
  tar -zxf ngx_openresty-*.tar.gz && \
  rm  -f ngx_openresty-*.tar.gz && \
  cd ngx_openresty-* && \
  ./configure --with-luajit --with-pcre-jit && \
  make && \
  make install

ENV PATH /usr/local/openresty/nginx/sbin:$PATH

ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
WORKDIR /usr/local/openresty/nginx

EXPOSE 80

#RUN \
#  luarocks install lapis && \
#  luarocks install --server=http://gin.io/repo gin

CMD ["nginx","-c","conf/nginx.conf"]
