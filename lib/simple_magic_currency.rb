require "simple_magic_currency/version"

module SimpleMagicCurrency
	class Error < StandardError; end
	BRL = {:delimiter => ".", :separator => ",", :unit => "R$", :precision => 2, :position => "before"}
	USD = {:delimiter => ',', :separator => ".", :unit => "US$", :precision => 2, :position => "before"}
  	# DEFAULT = USD.merge(:unit => "$")
  	DEFAULT = BRL

  	module Number
  		def to_currency(options = {})
  			number = self
  			default   = SimpleMagicCurrency::DEFAULT.stringify_keys
  			options   = default.merge(options.stringify_keys)
  			precision = options["precision"] || default["precision"]
  			unit      = options["unit"] || default["unit"]
  			position  = options["position"] || default["position"]
  			separator = precision > 0 ? options["separator"] || default["separator"] : ""
  			delimiter = options["delimiter"] || default["delimiter"]

  			begin
  				parts = number.with_precision(precision).split('.')
  				number = parts[0].to_i.with_delimiter(delimiter) + separator + parts[1].to_s
  				position == "before" ? unit + " " + number : number + " " + unit
  			rescue 
  				number
  			end
  		end

  		def with_delimiter(delimiter=",", separator=".")
  			number = self
  			begin
  				parts = number.to_s.split(separator)
  				parts[0].gsub!(/(\d)(?=(?:\d{3})+(?!\d))/, "\\1#{delimiter}")
  				parts.join separator
  			rescue
  				self
  			end
  		end

  		def with_precision(precision=3)
  			number = self
  			"%01.#{precision}f" % number
  		end
  	end
end

class Integer; include SimpleMagicCurrency::Number; end
class Float; include SimpleMagicCurrency::Number; end
class Decimal; include SimpleMagicCurrency::Number; end
class BigDecimal; include SimpleMagicCurrency::Number; end