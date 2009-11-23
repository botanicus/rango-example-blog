# encoding: utf-8

module Blog
  class Post
    include DataMapper::Resource
    property :title, String
  end

  class Tag
    include DataMapper::Resource
    property :title, String
  end

  class Comment
    include DataMapper::Resource
    property :title, String
  end
end
