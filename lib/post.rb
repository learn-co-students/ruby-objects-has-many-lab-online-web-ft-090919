class Posts 
  attr_accessor :title 
  def initialize(title)
    @title = title
    @@all = []
  end
  
end