FROM alpine:latest

WORKDIR /home/server

RUN apk add imagemagick && \
    apk add nodejs && \
    apk add npm

CMD npm install && \
    ./nodebb start && \
    ./nodebb log
