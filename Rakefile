#!/usr/bin/env rake

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "validates_url_format_of"
    gem.summary = %Q{ActiveRecord URL Validation}
    gem.description = %Q{Rails plugin that provides a validates_url_format_of method to ActiveRecord models. URLs are validated by regexp.}
    gem.email = "conickal@gmail.com"
    gem.homepage = "http://github.com/conickal/validates_url_format_of"
    gem.authors = ["Henrik Nyh", "Josh Nichols", "Nicholas Silva"]
    gem.add_dependency('activerecord', '~> 2.3.4')
    gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "validates_url_format_of #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
