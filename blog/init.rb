# encoding: utf-8

class Blog
  extend Rango::ImportMixin
  extend Rango::ApplicationMixin
end

require_relative "models.rb"
require_relative "views.rb"
