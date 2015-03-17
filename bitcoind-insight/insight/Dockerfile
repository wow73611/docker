FROM wow73611/bitcoind

WORKDIR /root

RUN \
  add-apt-repository -y ppa:chris-lea/node.js && \
  apt-get update && \
  apt-get install -y nodejs && \
  mkdir /root/.insight

RUN \
  npm install -g npm && \
  git clone https://github.com/bitpay/insight.git && \
  cd insight && \
  npm install

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY run-insight.sh /root/insight/run-insight.sh
CMD ["/usr/bin/supervisord"]
EXPOSE 3000
EXPOSE 8332
EXPOSE 8333

