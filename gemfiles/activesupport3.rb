source 'http://rubygems.org'

gem 'maruku'
gem 'rake'
gem 'yard'

gem 'activesupport', '~> 3.2'

platforms :jruby do
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'jdbc-sqlite3'
  gem 'jruby-openssl'
end

group :test do
  gem 'minitest'
  gem 'simplecov', :require => false
  gem 'sqlite3', :platforms => :ruby
end

platforms :rbx do
  gem 'rubinius-coverage', '~> 2.0'
  gem 'rubysl', '~> 2.0'
  gem 'rubysl-json', '~> 2.0'
end

gemspec :path => '../'
