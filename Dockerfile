FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=5.5.0

RUN gem install conjur-cli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["_conjur"]
CMD ["--help"]
