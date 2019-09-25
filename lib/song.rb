class Song

  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize (name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    artist.songs << self
  end

  def artist
    @artist
  end

  def artist_name
    #binding.pry
     self.artist.name if self.artist
  end
end
