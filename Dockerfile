FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails-services-sandbox
WORKDIR /rails-services-sandbox
ADD Gemfile /rails-services-sandbox/Gemfile
ADD Gemfile.lock /rails-services-sandbox/Gemfile.lock
RUN bundle install
ADD . /rails-services-sandbox
