# Grape::Swagger::ActiveModelSerializers

[![Gem Version](https://badge.fury.io/rb/grape-swagger-active_model_serializers.svg)](https://badge.fury.io/rb/grape-swagger-active_model_serializers)

A simple grape-swagger adapter to allow parse serializers as response model

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grape-swagger-active_model_serializers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grape-swagger-active_model_serializers

## Usage

It's automatically register a parser for serializers as bellow line. You don't have to do anything.

```ruby
GrapeSwagger.model_parsers.register(::GrapeSwagger::ActiveModelSerializers::Parser, ::ActiveModel::Serializer)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/grape-swagger-active_model_serializers. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Grape::Swagger::ActiveModelSerializers project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/grape-swagger-active_model_serializers/blob/master/CODE_OF_CONDUCT.md).
