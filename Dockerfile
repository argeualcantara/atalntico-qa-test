# FROM node:12.21.0-alpine3.10
FROM node:10-alpine

COPY . /app

EXPOSE 3000

WORKDIR /app

RUN npm install

CMD npm start
