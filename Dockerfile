FROM circleci/ruby:2.5.1-node

RUN sudo apt-get install -y python2.7-dev rsync
RUN sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && sudo  python get-pip.py
RUN sudo pip install awscli
RUN sudo npm install --global surge gatsby-cli push-dir gulp firebase-tools
