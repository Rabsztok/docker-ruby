FROM ruby

RUN apt-get update -y
RUN apt-get install -y \
      libqt5webkit5-dev \
      qt5-default \
      xvfb \
      nodejs \
      imagemagick \
      libmagickwand-dev

RUN gem install bundler --no-document

RUN mkdir -p ~/.ssh
RUN echo "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
