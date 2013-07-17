module Jeeyo
  class Track
    include Virtus

    attribute :points, Array[TrackPoint]
    
    def add_point(point)
      self.points << point
    end

    def self.all_from_gpx(gpx_text)
      doc = Nokogiri.XML(gpx_text)
      doc.search("trk").map do |trk_ele|
        from_gpx(trk_ele)
      end
    end

    def self.from_gpx(trk_ele)
      new.tap do |result|
        #TODO: look into trkseg elements
        trk_ele.search("trkpt").each do |trkpt_ele|
          track_point = TrackPoint.from_gpx(trkpt_ele)
          result.points << track_point
        end
      end
    end

    def segments
      @segments ||= begin
        results = []
        self.points.inject do |prev_point, next_point|
          results << TrackSegment.new(:start => prev_point, :finish => next_point) if prev_point
          prev_point = next_point
        end
        results
      end
    end

    def distance
      raw_distance.to_unit(:kilometers)
    end

    def raw_distance
      segments.map(&:raw_distance).sum
    end

  end
end