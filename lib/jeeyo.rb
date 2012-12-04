require "jeeyo/version"
require "ruby-units"

module Jeeyo
  autoload :Location, "jeeyo/location"
  
  EARTH_KILOMETERS_PER_RADIAN = Unit.new("6367.5 km/rad")
  EARTH_RADIANS_PER_KILOMETER = EARTH_KILOMETERS_PER_RADIAN.inverse
  
end
