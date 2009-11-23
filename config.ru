#!/usr/bin/env ./init.rb -p 4000 -s webrick
# encoding: utf-8

# Load init.rb even if config.ru is just loaded 
# This comes handy in Passenger etc, but it's still
# useful to have config.ru as an executable, because
# it's easy to have default arguments for bin/rackup
require_relative "init.rb" unless $0.eql?(__FILE__)

Rango::Router.use(:usher)

# http://github.com/joshbuddy/usher
Project.router = Usher::Interface.for(:rack) do
  get("/").to(Blog::Posts.dispatcher(:index)).name(:posts)
end

use Rango::Middlewares::Basic
run Project.router
