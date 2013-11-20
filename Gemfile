source 'http://rubygems.org'

gem 'rake'

platforms :jruby do
  gem 'jruby-openssl'
  gem 'activerecord-jdbcsqlite3-adapter'
end

group :development do
  gem 'maruku'
  gem 'yard'
end

group :test do
  gem 'minitest'
  gem 'simplecov', :require => false
  gem 'sqlite3'
end

gemspec
