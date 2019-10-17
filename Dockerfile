FROM fluent/fluentd

USER root

RUN apk add --no-cache --update --virtual .build-deps \
        sudo build-base ruby-dev git bash
COPY ./ /fluent-plugin-bcdb/
RUN gem install bundler
WORKDIR /fluent-plugin-bcdb/
RUN bundle install
RUN bundle exec rake install
# cutomize following instruction as you wish
 # USER root
