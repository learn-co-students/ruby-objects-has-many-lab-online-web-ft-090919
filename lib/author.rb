class Author
  attr_accessor :name
  attr_reader :posts
  @@all = []
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_post(post)
     @@post_count += 1
    post.author = self
  end
  
  def add_post_by_title (title)
     @@post_count += 2
    post = Post.new(title)
    post.author = self
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def self.post_count
    @@post_count
  end
end




