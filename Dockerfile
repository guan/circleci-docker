FROM circleci/ruby:2.5.1-stretch-node-browsers

# for Java
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
RUN sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections && \
    sudo apt-get update && \
    sudo apt-get install -y software-properties-common && \
    sudo add-apt-repository -y ppa:webupd8team/java && \
    sudo apt-get update && \
    sudo apt-get install -y --allow-unauthenticated oracle-java8-installer

RUN sudo apt-get install -y python2.7-dev
RUN sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && sudo  python get-pip.py
RUN sudo pip install awscli
