
# SimpleMagicCurrency

This is a simple gem (really simple), to handle money formats (USD, BRL and so on).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_magic_currency', git: "https://github.com/fabioaraujo121/simple_magic_currency", branch: "master"
```

And then execute:

    $ bundle

## Usage

1. Make sure your money attribute type is **Integer** or **Float** or **Decimal** or **BigDecimal**
2. Just use the method `to_currency`

### Example

    
    	product = Product.new(price: 19.99)
    	product.price.to_currency # => R$ 19,99

### Default Currency
The **default** value is **BRL** (example: **1999121.99 => R$ 1.999.121,99**)

### Change Default Currency
1. Go to your `/config/application.rb` file
2. Within your Application class
3. Add `SimpleMagicCurrency::DEFAULT = SimpleMagicCurrency::USD`, to use Dollar format, for example

### Supported Currencies

 - [x] BRL
 - [x] USD 
 - [x] BTC    

## Contributing

**Feel free to contribute!!! \o/**

Bug reports and pull requests are welcome on GitHub at https://github.com/fabioaraujo121/simple_magic_currency. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleMagicCurrency project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/simple_magic_currency/blob/master/CODE_OF_CONDUCT.md).
