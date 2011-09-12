# encoding: utf-8

Gem::Specification.new do |gem|
  gem.add_dependency 'activerecord', '~> 3.1.0'
  gem.add_development_dependency 'minitest', '~> 2.5'
  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rdiscount', '~> 1.6'
  gem.add_development_dependency 'simplecov', '~> 0.4'
  gem.add_development_dependency 'sqlite3', '~> 1.3'
  gem.add_development_dependency 'yard', '~> 0.7'
  gem.authors = ["Erik-Michels-Ober", "Henrik Nyh", "Josh Nichols", "Nicholas Silva"]
  gem.description = %q{Rails plugin that provides a validates_url_format_of method to ActiveRecord models. URLs are validated by regexp.}
  gem.email = 'conickal@gmail.com'
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'http://github.com/conickal/validates_url_format_of'
  gem.name = 'validates_url_format_of'
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
  gem.summary = %q{ActiveRecord URL Validation}
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = '0.3.0'
end
