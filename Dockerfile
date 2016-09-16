FROM ruby

# Update repositories
RUN apt-get update -y

# Use Node 6.x official repo  
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

# Install dependencies
RUN apt-get install -y \
      libqt5webkit5-dev \
      qt5-default \
      xvfb \
      gstreamer1.0-plugins-base \
      gstreamer1.0-tools \
      gstreamer1.0-x \
      nodejs \
      imagemagick \
      libmagickwand-dev \
      firefox-esr

# Install bundler
RUN gem install bundler --no-document

# link to correct node path
RUN ln -s /usr/bin/nodejs /usr/bin/node

# disable ssh key mismatch warnings
RUN mkdir -p ~/.ssh
RUN echo "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
