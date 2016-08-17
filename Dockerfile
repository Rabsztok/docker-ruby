FROM ruby

RUN apt-get update -y
RUN apt-get install -y \
      libqt5webkit5-dev \
      qt5-default \
      xvfb \
      gstreamer1.0-plugins-base \
      gstreamer1.0-tools \
      gstreamer1.0-x \
      nodejs \
      npm \
      imagemagick \
      libmagickwand-dev \
      firefox-esr

RUN gem install bundler --no-document

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir -p ~/.ssh
RUN echo "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
