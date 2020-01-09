FROM ruby

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && \
  apt-get install -y yarn && \
  gem install rails

ONBUILD COPY app /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000

ONBUILD RUN gem update --system && \
  gem install bundler && \
  bundler update --bundler && \
  bundle install && \
  yarn install --check-files
