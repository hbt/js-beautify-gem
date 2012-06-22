# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems + init submodules"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "js-beautify"
  gem.homepage = "http://github.com/hbt/js-beautify-gem"
  gem.license = "MIT"
  gem.summary = %Q{Gem for js-beautify}
  gem.description = %Q{Gem for js-beautify}
  gem.email = "hassenbentanfous@gmail.com"
  gem.authors = ["hbt"]
  gem.executables = ["js-beautify"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new


