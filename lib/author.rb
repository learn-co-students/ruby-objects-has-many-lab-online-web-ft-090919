class Author 
  attr_accessor :name 
  
  def initialized(name)
    @name = name
    @posts = []
  end 
  
  def add_post(post)
    @posts << post
  end
  
  def add_post_by_title(title)
    title.author = self
  end
end