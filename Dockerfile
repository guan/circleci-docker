FROM google/cloud-sdk:alpine

RUN apk add --update nodejs nodejs-npm libpng-dev

# To handle 'not get uid/gid'
RUN npm config set unsafe-perm true
RUN npm install -g yarn

