require "pry"

class Song

  attr_reader :name
  attr_accessor :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @artist = self.artist_name
  end

  def self.all
    @@all
  end

  def artist_name
    defined?(self.artist.name) ? self.artist.name : nil
  end


end
