class Song

  @@all = []

  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all 
    @@all
  end 
  
  def artist_name
    self.artist.name if self.artist
  end

end