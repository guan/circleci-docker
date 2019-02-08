FROM circleci/node:10.13.0

RUN sudo apt-get -y install libzip-dev zip
RUN sudo npm install -g gulp surge
