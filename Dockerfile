FROM google/cloud-sdk:203.0.0-alpine

RUN apk add --update nodejs nodejs-npm

RUN npm install -g surge gulp serverless yarn firebase-tools tslint typescript

