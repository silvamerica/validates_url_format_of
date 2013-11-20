Gem::Specification.new do |spec|
  spec.add_dependency 'activerecord', ['>= 3.1', '< 5']
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.authors = ["Erik-Michels-Ober", "Henrik Nyh", "Josh Nichols", "Nicholas Silva"]
  spec.description = %q{Rails plugin that provides a validates_url_format_of method to ActiveRecord models. URLs are validated by regexp.}
  spec.email = ['conickal@gmail.com']
  spec.files = %w(LICENSE.md README.md Gemfile Rakefile validates_url_format_of.gemspec)
  spec.files += Dir.glob("lib/**/*.rb")
  spec.files += Dir.glob("test/**/*")
  spec.homepage = 'http://github.com/conickal/validates_url_format_of'
  spec.licenses = ['MIT']
  spec.name = 'validates_url_format_of'
  spec.require_paths = ['lib']
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary = %q{ActiveRecord URL Validation}
  spec.test_files = Dir.glob("test/**/*")
  spec.version = '0.3.0'
end
