class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
 
  def add_song(song)
    song.artist = self
  end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
end

class Artist
  ...
 
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end



class Song
  attr_accessor :artist, :name, :genre
 
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

class Song
  ...
 
  def artist_name
    self.artist.name
  end


