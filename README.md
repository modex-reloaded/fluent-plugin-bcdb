# Fluent::Plugin::Bcdb

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/fluent/plugin/bcdb`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fluent-plugin-bcdb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-bcdb

## Usage

## Configuration options

    <match *>
      @type http
      endpoint_url    http://localhost.local/api/
      ssl_no_verify   false  # default: false
      http_method     put    # default: post
      serializer      json   # default: form
      rate_limit_msec 100    # default: 0 = no rate limiting
      raise_on_error  false  # default: true
      recoverable_status_codes 503, 400 # default: 503
      cacert_file     /etc/ssl/endpoint1.cert # default: ''
      client_cert_path /path/to/client_cert.crt # default: ''
      private_key_path /path/to/private_key.key # default: ''
      private_key_passphrase yourpassphrase # default: ''
      custom_headers  {"token":"arbitrary"} # default: nil
      authentication  basic  # default: none
      username        alice  # default: ''
      password        bobpop # default: '', secret: true
      token           tokent # default: ''
      buffered        true   # default: false. Switch non-buffered/buffered mode
      bulk_request    false  # default: false. Send events as application/x-ndjson
      compress_request true  # default: false. Send compressed events
    </match>

## Usage notes

If you'd like to retry failed requests, consider using [fluent-plugin-bufferize][3].
Or, specify appropriate `recoverable_status_codes` parameter.

To send events with bulk_request, you should specify `bulk_request` as `true`
Note that when this parameter as `true`, Fluentd always send events as `application/x-ndjson`.
Currently, `application/x-ndjson` is only supported MIME type for bulk_request.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fluent-plugin-bcdb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [Apache License](https://opensource.org/licenses/Apache-2.0).

## Code of Conduct

Everyone interacting in the Fluent::Plugin::Bcdb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/fluent-plugin-bcdb/blob/master/CODE_OF_CONDUCT.md).
