module Jeeyo
  class TrackSegment
    include Virtus

    attribute :start,   TrackPoint
    attribute :finish,  TrackPoint
    
    def speed
      distance / duration
    end

    def distance
      raw_distance.to_unit(:kilometers)
    end

    def raw_distance
      @raw_distance ||= start.location.raw_distance(finish.location)
    end

    def duration
      @duration ||= (finish.time - start.time).to_unit(:seconds)
    end
  end
end