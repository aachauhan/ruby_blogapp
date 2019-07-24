FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /blogapp
WORKDIR /blogapp

ADD Gemfile /blogapp/Gemfile
ADD Gemfile.lock /blogapp/Gemfile.lock

RUN bundle install

ADD . /blogapp