# The base image is the latest 8.x node (LTS)
FROM node:8.16.1@sha256:e45a254cf0f7071ffae9a6770cce268baf1f1952f6abb55c1061bff0757b138f

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY install/package.json /usr/src/app/package.json
RUN npm install && npm cache clean --force
COPY . /usr/src/app

ENV NODE_ENV=production \
    daemon=false \
    silent=false

CMD ./nodebb start

# the default port for NodeBB is exposed outside the container
EXPOSE 4567