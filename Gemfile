source 'http://rubygems.org'

gem 'maruku'
gem 'rake'
gem 'yard'

platforms :jruby do
  gem 'jruby-openssl'
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'jdbc-sqlite3'
end

group :test do
  gem 'minitest'
  gem 'simplecov', :require => false
  gem 'sqlite3', :platforms => :ruby
end

gemspec
