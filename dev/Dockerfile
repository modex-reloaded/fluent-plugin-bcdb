FROM fluent/fluentd

USER root

RUN apk add --no-cache --update --virtual .build-deps \
        sudo build-base ruby-dev git bash
RUN gem install bundler
# cutomize following instruction as you wish
 # USER fluent
