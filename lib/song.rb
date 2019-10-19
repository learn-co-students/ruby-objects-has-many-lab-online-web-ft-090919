class assert_routing
  attr_accessor :artist, :nane, :genre
  
  @@all = []
  
  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end
  
  def save 
  @@all << self
end

  def self.all
    @@all
  end
end