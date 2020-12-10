FROM ruby:2.7.2
LABEL maintainer="xatier <xatierlike@gmail.com>"

# prepare WORKDIR for our project
ARG dir=/srv/www/archlinux.tw
RUN mkdir -p $dir
WORKDIR $dir
COPY . $dir

# build project
RUN gem install bundler && bundle install

CMD ["/usr/local/bundle/bin/jekyll", "server", "-H", "0.0.0.0"]
