FROM pritunl/archlinux
MAINTAINER Hiroshi Yui <hiroshi@ghostsinthelab.org>

# install RVM
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \curl -sSL https://get.rvm.io | bash -s stable

# prepare WORKDIR for our project
RUN mkdir -p /srv/www/archlinux.tw
WORKDIR /srv/www/archlinux.tw
COPY . /srv/www/archlinux.tw

# install Ruby
RUN /bin/bash -l -c 'rvm install `cat .ruby-version`'

# build project
RUN /bin/bash -l -c 'gem install bundler'
RUN /bin/bash -l -c 'bundle install'

CMD /bin/bash -l -c 'jekyll server -H 0.0.0.0'
