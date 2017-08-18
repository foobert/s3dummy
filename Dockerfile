FROM node:alpine
COPY package*.json /srv/
RUN mkdir -p /data && mkdir -p /srv && cd /srv && npm install
EXPOSE 10001
COPY entrypoint.sh /
CMD /entrypoint.sh
