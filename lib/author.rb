class Author
    
    attr_accessor :name

  @@post_count = 0
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end 

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1 
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @@all << post
    post.author = self
    @@post_count += 1 
  end



  def self.post_count
    Post.all.count
  end 

  def self.all
    @@all 
  end 

  

end