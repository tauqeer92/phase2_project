class Music

  def initialize
    @array = []
  end

  def add(track)
    fail 'Input empty' if track.empty? 
    @array.push(track)
  end

  def list
    return @array
  end
end
