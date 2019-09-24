class Post
  attr_accessor :author, :author_name, :title
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    self.author ? @author_name = self.author.name : nil
  end
  
end