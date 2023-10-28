FROM node:18.12-alpine

RUN apk update && apk add busybox-suid dcron curl

WORKDIR /app/

COPY ./src/package.json ./
RUN npm install
