# encoding: utf-8

# === Usage === #
# Run gem bundle for installation. You have to have bundler gem installed.

# http://github.com/wycats/bundler
# http://litanyagainstfear.com/blog/2009/10/14/gem-bundler-is-the-future
# http://yehudakatz.com/2009/11/03/using-the-new-gem-bundler-today
# http://www.engineyard.com/blog/2009/using-the-rubygems-bundler-for-your-app

# === Shared Gems === #
# Specify a dependency on rango. When the bundler downloads gems,
# it will download rango as well as all of rango' dependencies
gem "rango"#, git: "git://github.com/botanicus/rango.git"
gem "rack"#, git: "git://github.com/rack/rack.git"

# router
gem "usher"#, git: "git://github.com/joshbuddy/usher.git"

# template engine
gem "haml"#, git: "git://github.com/nex3/haml.git"

# ORM
gem "dm-core"#, git: "git://github.com/datamapper/dm-core.git"
gem "dm-timestamps"#, git: "git://github.com/datamapper/dm-more.git"
gem "dm-aggregates"#, git: "git://github.com/datamapper/dm-more.git"

# TODO: don't load them
#gem "thin"#, git: "git://github.com/macournoyer/thin.git" # there seems to be some problems with latest thin
#gem "unicorn"#, git: "git://repo.or.cz/unicorn.git"
gem "racksh", require_as: nil#, git: "git://github.com/sickill/racksh.git"

# === Environment-Specific Setup === #
only(:development) do
  gem "shotgun", require_as: nil#, git: "git://github.com/rtomayko/shotgun.git"
end

except(:stage, :production) do
  gem "do_sqlite3"#, git: "git://github.com/datamapper/do.git"
end

only(:stage, :production) do
  gem "do_mysql"#, git: "git://github.com/datamapper/do.git"
end

only(:test) do
  gem "rspec"#, git: "git://github.com/dchelimsky/rspec.git"
  gem "rack-test", require_as: "rack/test"#, git: "git://github.com/brynary/rack-test.git"
  gem "webrat"#, git: "git://github.com/brynary/webrat.git"
end

only(:cucumber) do
  gem "rspec"#, git: "git://github.com/dchelimsky/rspec.git"
  gem "rack-test"#, git: "git://github.com/brynary/rack-test.git"
  gem "webrat"#, git: "git://github.com/brynary/webrat.git"
  gem "cucumber"#, git: "git://github.com/aslakhellesoy/cucumber.git"
end

# === Bundler Setup === #
# Specify where the bundled gems should be stashed. This directory will
# be a gem repository where all gems are downloaded to and installed to.
#
# This is an optional setting.
# The default is: vendor/gems
bundle_path "gems"

# Specify where gem executables should be copied to.
#
# This is an optional setting.
# The default is: bin
bin_path "bin"

# Specify that rubygems should be completely disabled. This means that it
# will be impossible to require it and that available gems will be
# limited exclusively to gems that have been bundled.
#
# The default is to automatically require rubygems. There is also a
# `disable_system_gems` option that will limit available rubygems to
# the ones that have been bundled.
disable_rubygems
