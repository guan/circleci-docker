FROM circleci/ruby:2.4.2

RUN sudo apt-get install -y python2.7-dev
RUN sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && sudo  python get-pip.py
RUN sudo pip install awscli
