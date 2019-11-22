FROM google/cloud-sdk:alpine

RUN apk add --update nodejs nodejs-npm libpng-dev
RUN npm install -g yarn

