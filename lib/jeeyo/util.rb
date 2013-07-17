module Jeeyo
  module Util
    def haversine(p1, p2)
      dlat = deg_to_rad(p2.lat - p1.lat) 
      dlon = deg_to_rad(p2.lon - p1.lon) 

      a = (Math.sin(dlat/2.0) * Math.sin(dlat/2.0)) +
          (Math.cos(deg_to_rad p1.lat) * Math.cos(deg_to_rad p2.lat) * 
          (Math.sin(dlon/2.0) * Math.sin(dlon/2.0)))
          
      angular_distance = 2.0 * Math.atan2( Math.sqrt(a), Math.sqrt(1-a))

      EARTH_KILOMETERS_PER_RADIAN.scalar * angular_distance
    end

    def deg_to_rad(deg)
      deg * (Math::PI / 180.0)
    end


    extend self
  end
end