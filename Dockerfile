FROM ruby:alpine

ENV ARCHTW_HOME /arch-tw

EXPOSE 4000
VOLUME $ARCHTW_HOME

COPY Gemfile $ARCHTW_HOME/Gemfile

WORKDIR $ARCHTW_HOME

RUN apk add --no-cache build-base ruby-dev nodejs supervisor \
  && bundle install

ENTRYPOINT ["/usr/bin/supervisord", "-c", "supervisord.conf"]
