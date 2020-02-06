# Unleash::Strategy::CompanyId

This is a sample custom strategy for the Unleash ruby client.

Using this as a starting point you should be able to write your own custom strategy for unleash, test it, and package it as a gem.

The custom strategy code can be found in the file `lib/unleash/strategy/company_id`, and rspec test in `spec/unleash/strategy/company_id_spec.rb`.

## Introduction to this custom strategy

This custom strategy checks if a user has a context set with the following hash `properties: {companyId: 'value' }` matching one of the values specified in the server as a parameter `companyIds` (formated as csv).

For example:
```
context = Unleash::Context.new({ properties: { companyId: 'initech' } })
```

Would match if in the server the following is configured for this strategy:

```
companyIds: acme,initech,hooli
```

## Your custom strategy

You should name your strategy appropriately, and correctly rename the gem, files, tests, class names, etc.

The custom strategy code will get loaded iff it is found in the `lib/unleash/strategy` path and the class is found in the `Unleash::Strategy` module.

I would highly recommend also writing unit tests for your custom strategy.

## Installation of this custom strategy

Add this line to your application's Gemfile:

```ruby
gem 'unleash-client-strategy-companyid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unleash-client-strategy-companyid

## Usage from CLI

Run the following command to test the strategy from the CLI:

```
bundle exec unleash-client -v --url='https://unleash.herokuapp.com/api' 4343443 companyId=acme
```

Note: this might currently only works if you are working from HEAD from the main unleash-client repo.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

 To release a new version, update the version number in `company_id.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rarruda/unleash-client-strategy-companyid.
