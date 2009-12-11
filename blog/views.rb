# encoding: utf-8

require "rango/helpers"
require "rango/controller"
require "rango/mixins/render"
require "rango/mixins/rendering"

module Blog
  class Application < Rango::Controller
    include Rango::RenderMixin
    include Rango::ExplicitRendering
    # TODO: implement application controller
  end

  class Posts < Application
    def index
      render "index.html", posts: Post.all
    end
  end
end
