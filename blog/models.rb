# encoding: utf-8

module Blog
  class Post
    include DataMapper::Resource
    property :title, String
    property :slug,  String, key: true
  end

  class Tag
    include DataMapper::Resource
    property :title, String
    property :slug,  String, key: true
  end

  class Comment
    include DataMapper::Resource
    property :id, Serial
    property :title, String
  end
end
