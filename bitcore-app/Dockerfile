FROM wow73611/nodejs
MAINTAINER wow73611 <wow73611@gmail.com>

RUN \
  npm install bitcore && \
  npm install -g express-generator

ADD bitcore /app/bitcore
WORKDIR /app/webapp

RUN \
  cd /app && \
  chmod +x bitcore && \
  express webapp && \
  cd webapp && \
  npm install

#ENTRYPOINT ["npm","start"]
CMD ["npm","start"]
EXPOSE 3000
