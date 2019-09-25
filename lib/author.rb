require_relative "./post.rb"
class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  def posts
    Post.all.select { |post| post.author = self }
  end
end


  # def add_post(post)
  #   post.author = self
  # end
  # def add_post_by_title(title)
  #   post = Post.new(title)
  #   self.add_song(song)
  # end
  # def self.song_count
  #   count = 0
  #   @@all.each do |artist|
  #     count += artist.songs.count
  #   end
  #   count
  # end