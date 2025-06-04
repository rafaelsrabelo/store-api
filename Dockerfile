FROM ruby:3.3

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    libyaml-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .
