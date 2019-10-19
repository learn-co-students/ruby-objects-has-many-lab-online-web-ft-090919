class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist.select {|song| song.artist = self }
  end
  
  def add_song_by_name(name, genere)
    song = Song.new(name, genre)
    add_song
  end
end