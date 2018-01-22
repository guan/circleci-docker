
FROM circleci/node:9.2.1

RUN sudo apt-get -y install libzip-dev zip
RUN sudo npm install -g gulp surge
