FROM node:21.7.0-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade
    apk add --no-cache zlib=1.3-r1
EXPOSE  4000
CMD node graphserver.js
