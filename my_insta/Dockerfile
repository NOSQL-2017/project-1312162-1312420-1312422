FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /my_insta
WORKDIR /my_insta
ADD Gemfile /my_insta/Gemfile
ADD Gemfile.lock /my_insta/Gemfile.lock
RUN bundle install
ADD . /my_insta