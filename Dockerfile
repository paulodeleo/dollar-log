FROM ruby:2.3.1-slim
RUN mkdir -p /dollar-log
WORKDIR /dollar-log
COPY . /dollar-log/
RUN apt-get update && apt-get install -y build-essential libpq-dev
RUN bundle install