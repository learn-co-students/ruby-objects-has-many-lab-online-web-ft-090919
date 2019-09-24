class Author
  
  attr_accessor :name
  
  @@post_count = 1
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def posts
    @posts = Post.all.select{|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @posts << post
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
end