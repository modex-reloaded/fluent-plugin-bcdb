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
    <match>
        @type bcdb
        endpoint_url    "https://bcdb.modex.tech/node-03/services/core/v1/api" # Api endpoint like https://bcdb.modex.tech/node-03/services/core/v1/api
        auth_url        https://bcdb.modex.tech/oauth/token
        bcdb_entity     "logs" # BCD Entity Name
        ssl_no_verify   false  # default: false
        rate_limit_msec 100    # default: 0 = no rate limiting
        raise_on_error  true  # default: true
        recoverable_status_codes 503, 400 # default: 503
        cacert_file     /etc/ssl/endpoint1.cert # default: ''
        client_cert_path /path/to/client_cert.crt # default: ''
        private_key_path /path/to/private_key.key # default: ''
        private_key_passphrase yourpassphrase # default: ''
        username        bcdb.admin@modex.tech  # default: ''
        password        BCDBDemo2019! # default: '', secret: true
        client_id       0x01 # BDCB client_id
        client_secret   0x000001 # BDCB client_secret
        buffered        false   # default: false. Switch non-buffered/buffered mode
        compress_request false  # default: false. Send compressed events
    </match>

## Usage notes

If you'd like to retry failed requests, specify appropriate `recoverable_status_codes` parameter.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fluent-plugin-bcdb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [Apache License](https://opensource.org/licenses/Apache-2.0).

## Code of Conduct

Everyone interacting in the Fluent::Plugin::Bcdb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/fluent-plugin-bcdb/blob/master/CODE_OF_CONDUCT.md).
