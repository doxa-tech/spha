FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x
RUN mkdir /spha
WORKDIR /spha
COPY Gemfile /spha/Gemfile
COPY Gemfile.lock /spha/Gemfile.lock
RUN bundle install
COPY . /spha
