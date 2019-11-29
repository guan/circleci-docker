FROM google/cloud-sdk

RUN apt-get install -y nodejs npm libpng-dev

# To handle 'not get uid/gid'
RUN npm config set unsafe-perm true
RUN npm install -g yarn

RUN apt-get install -y rubygems
RUN gem install hub

# ENTRYPOINT [ "yarn" ]

