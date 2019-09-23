class Song
  
attr_accessor :name, :artist, :song, :artist_name
 
 @@all = []

 def initialize(name)
   @name = name
   @@all << self
    
 end
 
 def self.all
   @@all
 end

  def artist_name
   if artist
      artist_name = artist.name
   else 
      nil
   end
  end

 
end