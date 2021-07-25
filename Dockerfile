FROM ruby:2.7.3

RUN apt-get update -qq \
  && apt-get install -y nodejs yarn

WORKDIR /app

COPY . /app/
RUN bundle config --local set path 'vendor/bundle' \
  && bundle install