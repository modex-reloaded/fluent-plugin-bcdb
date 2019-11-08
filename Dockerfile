#
# Copyright ©2019. Modex. | MODEX (Gibraltar) LIMITED
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
