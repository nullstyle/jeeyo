module Jeeyo
  class Location
    attr_reader :lat, :lon
    
    def initialize(lat, lon)
      @lat = lat
      @lon = lon
    end
    
    
    def distance(other)
      dlat = (self.lat - other.lat)
      dlon = (self.lon - other.lon)
      
      a = (Math.sin(dlat/2) * Math.sin(dlat/2)) +
          (Math.cos(self.lat) * Math.cos(other.lat) * Math.sin(dlon/2) * (Math.sin(dlon/2)))
      
      angular_distance = 2 * Math.atan2( Math.sqrt(a), Math.sqrt(1-a))
      
      EARTH_KILOMETERS_PER_RADIAN * Unit(angular_distance, "radians")
    end
    
  end
end