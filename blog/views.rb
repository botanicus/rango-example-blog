# encoding: utf-8

require "rango/controller"

class Blog
  class Application < Rango::Controller
    # TODO: implement application controller
  end

  class ShowCase < Application
    def index
      render "index.html"
    end
  end

  class Posts < Application
    # TODO: implement posts controller
  end

end
