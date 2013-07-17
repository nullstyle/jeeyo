module Jeeyo
  class TrackPoint
    include Virtus

    # attr_reader :track # parent
    # attr_reader :index # position within parent

    attribute :location,  Location #required
    attribute :time,      Time #required

    attribute :ele,             Unit    #distance, optional
    attribute :recorded_speed,  Unit    #distance/time, optional
    attribute :fix_type,        Symbol  #optional
    attribute :sat_count,       Integer #optional
    attribute :dop,             Float   #optional
        
    FIX_TYPES = [ :none, :two_d, :three_d, :dgps, :pps ]
    
    delegate :lat, :lon, :to => :location

    def self.from_gpx(trkpt_ele)
      new.tap do |result|
        location        = Location.new
        location.lat    = trkpt_ele["lat"].to_f
        location.lon    = trkpt_ele["lon"].to_f
        result.location = location
        result.time     = Time.parse trkpt_ele.search("time").first.text
      end
    end
  end
end
