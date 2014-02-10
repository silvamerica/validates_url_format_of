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
  gem 'backports'
  gem 'minitest'
  gem 'rubocop', '>= 0.16', :platforms => [:ruby_19, :ruby_20, :ruby_21]
  gem 'simplecov', :require => false
  gem 'sqlite3', :platforms => :ruby
  gem 'yardstick'
end

gemspec :path => '../'
