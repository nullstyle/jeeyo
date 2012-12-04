module Jeeyo
  class Location
    attr_reader :lat, :lon
    
    def initialize(lat, lon)
      @lat = lat
      @lon = lon
    end
    
    
    def distance(other)
      
      dlat = (other.lat - self.lat) >> "radians"
      dlon = (other.lon - self.lon) >> "radians"

      a = (Math.sin(dlat/2) * Math.sin(dlat/2)) +
          (Math.cos(self.lat) * Math.cos(other.lat) * 
          (Math.sin(dlon/2) * Math.sin(dlon/2)))
      
      angular_distance = 2 * Math.atan2( Math.sqrt(a), Math.sqrt(1-a))
      
      EARTH_KILOMETERS_PER_RADIAN * Unit(angular_distance, "radians")
    end
    
    def equal?(other, accuracy=Unit(10, :meters))
      raise ArgumentError, "Please use a distance unit" unless accuracy.kind == :length
      
      self.distance(other) <= accuracy
    end
    
    private
    
  end
end