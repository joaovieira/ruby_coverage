# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby_complexity/version"

Gem::Specification.new do |s|
  s.name = "ruby_complexity"
  s.version = RubyComplexity::VERSION
  s.platform = Gem::Platform::RUBY
  s.email = "ei07128@fe.up.pt"
  s.homepage    = "http://github.com/joaovieira/ruby_complexity.git"
  s.summary = "Ruby file complexity analyzer engine."
  s.description = "Ruby file complexity analyzer engine with grapher support."
  s.authors = ['Ana Castro', 'Bruno Duarte', 'João Vieira','José Miguel Viana', 'Oleksandr Kruk', 'Pedro Oliveira', 'Ricardo Ferreira']
  
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = Dir['Rakefile', '{app,lib,config,test,public}/**/*', 'README*']
  s.require_paths = ["lib"]

  s.add_dependency "metric_fu", ">= 2.1.1"
end

