FROM node:alpine
RUN mkdir -p /data && npm install -g s3rver
EXPOSE 10001
COPY entrypoint.sh /
CMD /entrypoint.sh
