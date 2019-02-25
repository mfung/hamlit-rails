Hamlit-rails
============

[![Build Status](https://travis-ci.org/mfung/hamlit-rails.svg)](https://travis-ci.org/mfung/hamlit-rails) [![Gem Version](https://badge.fury.io/rb/hamlit-rails.svg)](http://badge.fury.io/rb/hamlit-rails)

Provides hamlit generators for Rails. It also enables hamlit as the templating
engine and "hamlit:erb2haml" rake task that converts erb files to haml.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hamlit-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hamlit-rails

## Usage

By installing this gem, Haml templates are generated on `rails g`.

Also, use the following rake task to convert .erb to .haml:

```
bundle exec rake hamlit:erb2haml
```

## Contributing

1. Fork it ( https://github.com/mfung/hamlit-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Acknowledgement
This code is heavily influenced by [haml-rails](https://github.com/indirect/haml-rails).
And is written because of an issue created in that repo.

## License

MIT license
