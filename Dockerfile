# imagen base
FROM node:16-alpine3.11


RUN npm install -g json-server && npm install

COPY . /app

WORKDIR /app

ENTRYPOINT [ "node", "server.js" ]