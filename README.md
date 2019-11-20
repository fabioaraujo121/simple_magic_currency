
# SimpleMagicCurrency @ 0.2.0

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
2. Just use the method `to_currency` (when you've already setted DEFAULT)
3. Or use `to_currency(SimpleMagicCurrency::BRL)` when you haven't setted default or want something different from default

### Example

    
    	product = Product.new(price: 19.99)
    	product.price.to_currency # => R$ 19,99
    	product.price.to_currency(SimpleMagicCurrency::USD) # => US$ 19,99
    	product.price.to_currency(SimpleMagicCurrency::BTC, {unit: "ETH"}) # => 19.990000 ETH

### Set Default Currency **Required**
1. Create a file `/config/initializers/simple_magice_currency.rb` file
2. Add `SimpleMagicCurrency::DEFAULT = SimpleMagicCurrency::USD`, to use Dollar format, for example

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
