# Jeeyo

Jeeyo is a simple library of utility functions to help with geographic calculations and other GPS related goodness.  It uses ruby-units to provide unit conversion.

## Installation

Add this line to your application's Gemfile:

    gem 'jeeyo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jeeyo

## Usage

```ruby
require 'jeeyo'
san_francisco = Jeeyo::Location.new(Unit(37.76, "deg"), Unit(-122.4, "deg"))
new_york = Jeeyo::Location.new(Unit(40.66, "deg"), Unit(-73.94, "deg"))

as_the_crow_flies = san_francisco.distance(new_york) # => 4132.42 km

as_the_crow_flies >> "miles" # => 2567.77 mi


new_york.equal?(san_francisco) # => false
# approximate location matching.
new_york.equal?(san_francisco, Unit(2600, "miles")) # => true, i.e. new_york is less than 2600 miles from san_francico

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
