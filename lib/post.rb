class Post 
attr_accessor :title, :author

@@all = []

  def initialize(title, author_name = nil)
    @title = title
    @author_name= author
    @@all << self
  end 

  def author
    @author
  end 

  def self.all 
    @@all
  end

  def author_name
    self.author ? self.author.name : nil
  end

  def add_post_by_title(title)
    post = Post.new(title)
  end

end  