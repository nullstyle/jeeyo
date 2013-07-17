require "jeeyo/version"
require "ruby-units"
require 'nokogiri'
require 'virtus'
require "active_support/core_ext/module/delegation"

module Jeeyo
  autoload :Location,       "jeeyo/location"
  autoload :Track,          "jeeyo/track"
  autoload :TrackPoint,     "jeeyo/track_point"
  autoload :TrackSegment,   "jeeyo/track_segment"
  autoload :Util,           "jeeyo/util"
  
  EARTH_KILOMETERS_PER_RADIAN = Unit.new("6367.5 km/rad")
  EARTH_RADIANS_PER_KILOMETER = EARTH_KILOMETERS_PER_RADIAN.inverse
  
end
