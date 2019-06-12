FROM node:8
#FROM node:10-alpine
#FROM us.icr.io/oms-test1/node:10-alpine

WORKDIR /app
COPY package.json /app
RUN npm install

COPY . /app
CMD node index.js
EXPOSE 8081

