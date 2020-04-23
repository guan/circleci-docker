FROM ruby:2.6.1-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    bash \
    curl \
    curl-dev \
    git 

RUN gem install hub

RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
RUN mv kustomize /bin
