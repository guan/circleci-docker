
FROM circleci/node:8.16.2

RUN sudo apt-get -y install libzip-dev zip
RUN sudo npm install -g gulp surge firebase-tools yarn 
