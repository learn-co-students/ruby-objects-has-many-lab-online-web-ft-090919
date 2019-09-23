class Author

     @@all = []

  attr_accessor :name, :posts 

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    Post.all.select{|post_|post_.author == self}
  end

  def add_post(new_post)
    new_post.author = self 
  end

   def add_post_by_title(post_title)
      post_title = Post.new(post_title)
      add_post(post_title)
  end
  

  
  def self.post_count
      Post.all.length
  end 


end  
  