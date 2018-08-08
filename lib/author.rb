

class Author


  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = [ ]

  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
    new_post
  end

  def self.post_count
    Post.all.size

  end








end
