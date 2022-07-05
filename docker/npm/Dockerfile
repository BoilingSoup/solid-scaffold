FROM node:current-alpine3.15

WORKDIR /entrypoint

COPY ./docker/npm/entrypoint.sh /entrypoint

RUN chmod +x /entrypoint/entrypoint.sh
RUN chown -R node /entrypoint

ENTRYPOINT ["/entrypoint/entrypoint.sh"]
