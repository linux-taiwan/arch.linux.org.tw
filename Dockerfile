FROM ruby:2.4.0
MAINTAINER Hiroshi Yui <hiroshi@ghostsinthelab.org>

# prepare WORKDIR for our project
RUN mkdir -p /srv/www/archlinux.tw
WORKDIR /srv/www/archlinux.tw
COPY . /srv/www/archlinux.tw

# build project
RUN /bin/bash -l -c 'gem install bundler'
RUN /bin/bash -l -c 'bundle install'

CMD /bin/bash -l -c 'jekyll server -H 0.0.0.0'
