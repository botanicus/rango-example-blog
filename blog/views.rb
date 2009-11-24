# encoding: utf-8

require "rango/controller"

module Blog
  class Application < Rango::Controller
    # TODO: implement application controller
  end

  class Posts < Application
    def index
      @posts = Post.all
      render "index.html"
    end
  end
end
