# imagen base
FROM ubuntu:14.04

# Instalar Node apt-get 
RUN sudo apt-get update \
&& apt-get install -y curl  \
&& curl -sL deb.nodesource.com/setup_10.x | bash - \
&& apt-get install -y nodejs \
&& mkdir app \
&& apt-get remove -y curl \
&& rm -rf /var/lib/apt/lists/*

RUN npm install -g json-server && npm install

COPY . /app

WORKDIR /app

ENTRYPOINT [ "node", "server.js" ]