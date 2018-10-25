FROM circleci/node:10.12.0-browsers

# AWS
RUN sudo apt-get install -y python2.7-dev
RUN sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && sudo  python get-pip.py
RUN sudo pip install awscli

# serverless
RUN sudo npm install -g serverless surge gulp firebase-tools



