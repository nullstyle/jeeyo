module Jeeyo
  class Location
    include Virtus

    attribute :lat, Float 
    attribute :lon, Float 
    
    def distance(other)
      raw_distance(other).to_unit(:kilometers)
    end

    def raw_distance(other)
      Util.haversine(self, other)
    end
    
    def equal?(other, accuracy=Unit(10, :meters))
      raise ArgumentError, "Please use a distance unit" unless accuracy.kind == :length
      
      self.distance(other) <= accuracy
    end
  end
end