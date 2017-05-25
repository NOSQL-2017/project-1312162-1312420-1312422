FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /My_picture
WORKDIR /My_picture
ADD Gemfile /My_picture/Gemfile
ADD Gemfile.lock /My_picture/Gemfile.lock
RUN bundle install
ADD . /My_picture