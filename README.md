# BTC Markets

Unofficial BTC Markets API client.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'btc_markets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install btc_markets

## Usage

```ruby
require 'btc_markets'

BTCMarkets::Market.tick
# => {
#      best_bid:   '9847.19'.to_d,
#      best_ask:   '9850.78'.to_d,
#      last_price: '9850.78'.to_d,
#      currency:   'AUD',
#      instrument: 'BTC',
#      timestamp:  '1510144148'.to_d,
#      volume24h:  '326.01738'.to_d,
#    }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Domon/btc_markets. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0.html).

## Code of Conduct

Everyone interacting in the BTCMarkets project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/btc_markets/blob/master/CODE_OF_CONDUCT.md).
