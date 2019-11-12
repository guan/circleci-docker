FROM google/cloud-sdk:270.0.0-alpine

RUN apk add --update nodejs nodejs-npm libpng-dev
RUN npm config set unsafe-perm true
RUN npm install -g surge gulp serverless yarn firebase-tools tslint typescript
RUN firebase -V

