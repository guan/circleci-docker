FROM google/cloud-sdk:270.0.0-alpine

RUN apk add --update nodejs nodejs-npm libpng-dev
RUN npm install -g surge gulp serverless yarn firebase-tools tslint typescript
RUN firebase -V

