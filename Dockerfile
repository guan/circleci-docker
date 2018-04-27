FROM circleci/ruby:2.5.0-node

ARG hub_version="2.2.9"

# Install runtime dependencies
RUN sudo apt-get update \
 && sudo apt-get install -y --no-install-recommends \
        bzip2 \
        libfontconfig \
        fonts-migmix \
 && sudo apt-get clean \
 && sudo rm -rf /var/lib/apt/lists/*

RUN set -x  \
    # Install official PhantomJS release
 && mkdir /tmp/phantomjs \
 && curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
        | tar -xj --strip-components=1 -C /tmp/phantomjs \
 && sudo mv /tmp/phantomjs/bin/phantomjs /usr/local/bin \
    # Clean up
 && sudo apt-get clean \
 && sudo rm -rf /tmp/* /var/lib/apt/lists/* \
 && sudo npm install -g surge gulp

RUN sudo wget https://github.com/github/hub/releases/download/v${hub_version}/hub-linux-amd64-${hub_version}.tgz \
 && sudo tar zxvf hub-linux-amd64-${hub_version}.tgz \
 && sudo mv hub-linux-amd64-${hub_version}/bin/hub /usr/local/bin