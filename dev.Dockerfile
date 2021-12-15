FROM ruby:3.0

LABEL maintainer="e0513985"

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  nodejs \
  yarn

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
