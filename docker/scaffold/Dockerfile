FROM node:current-alpine3.15

RUN apk add --no-cache subversion
RUN npm install -g npm@latest

WORKDIR /entrypoint

COPY ./docker/scaffold/entrypoint.sh /entrypoint

RUN chmod +x /entrypoint/entrypoint.sh
RUN chown -R node /entrypoint

WORKDIR /home/node/app

ENTRYPOINT ["/entrypoint/entrypoint.sh"]
