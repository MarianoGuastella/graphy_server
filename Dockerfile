FROM node:21.1-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk-get update &&\
    apk-get upgrade -y
EXPOSE  4000
CMD node graphserver.js
