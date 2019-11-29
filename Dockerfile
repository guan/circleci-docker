FROM ruby:2.6.1-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    bash \
    curl-dev \
    git 

RUN gem install hub


