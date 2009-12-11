#!/usr/bin/env ruby1.9 --disable-gems
# encoding: utf-8

# This file should set Rango environment
# You can run your scripts with ./init.rb my-script.rb
# See http://wiki.github.com/botanicus/rango/rango-boot-process

# bundler
begin
  require_relative "gems/environment.rb"
rescue LoadError => exception
  abort "LoadError during loading gems/environment: #{exception.message}\nRun gem bundle to fix it."
end

require "rango"

environment = (ENV["RANGO_ENV"] || (RANGO_ENV if defined?(RANGO_ENV)) || "development").to_s
unless %w[test development stage production].include?(environment)
  abort "Unknown environment: #{environment}"
end
Rango.boot(environment: environment)

Rango.logger.info("Loading dependencies for #{Rango.environment}")
Bundler.require_env(Rango.environment)

# register applications
require_relative "blog/init.rb"

# database connection
DataMapper.setup(:default, "sqlite3:#{Rango.environment}.db")

# if you will run this script with -i argument, interactive session will begin
Rango.interactive if ARGV.delete("-i")

# so it can work as a runner
# ./init.rb: start webserver
if ARGV.length > 0 && $0.eql?(__FILE__)
  # config.ru
  if ARGV.last.split(".").last.eql?("ru")
    if Rango.development?
      load_relative "bin/shotgun"
    else
      load_relative "bin/rackup"
    end
  else
    load ARGV.shift
  end
end
