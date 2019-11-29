FROM google/cloud-sdk

RUN apt-get install -y nodejs npm libpng-dev

RUN npm config set unsafe-perm true
RUN npm install -g yarn

RUN apt-get install -y rubygems
RUN gem install hub

RUN hub --version


