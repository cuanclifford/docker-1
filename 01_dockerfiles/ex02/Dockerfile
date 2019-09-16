FROM ruby

RUN apt-get update && \
  apt-get install -y yarn && \
  gem install rails

ONBUILD COPY app /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000

ONBUILD RUN gem update --system && \
  gem install bundler && \
  bundler update --bundler && \
  bundle install