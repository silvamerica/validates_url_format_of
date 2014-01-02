#!/usr/bin/env rake

require 'bundler'
Bundler::GemHelper.install_tasks

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

require 'yard'
YARD::Rake::YardocTask.new do |task|
  task.files   = %w[LICENSE.md lib/**/*.rb]
  task.options = %w[--markup markdown]
end

begin
  require 'rubocop/rake_task'
  Rubocop::RakeTask.new
rescue LoadError
  task :rubocop do
    $stderr.puts 'Rubocop is disabled'
  end
end

task :default => [:test, :rubocop]
