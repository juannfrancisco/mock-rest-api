# imagen base
FROM node:16-alpine3.11

COPY . /app

WORKDIR /app

ENTRYPOINT [ "node", "server.js" ]