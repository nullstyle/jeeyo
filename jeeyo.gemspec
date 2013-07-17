# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jeeyo/version', __FILE__)

Gem::Specification.new do |gem|
  
  gem.authors       = ["Scott Fleckenstein"]
  gem.email         = ["nullstyle@gmail.com"]
  gem.description   = %q{Jeeyo is a simple library of utility functions to help with geographic calculations}
  gem.summary       = %q{Geo/GPS utility library}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jeeyo"
  gem.require_paths = ["lib"]
  gem.version       = Jeeyo::VERSION
  
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ">= 2.10.0"
  gem.add_development_dependency "pry"

  gem.add_runtime_dependency "ruby-units", "~> 1.4.1"
  gem.add_runtime_dependency "activesupport", ">= 3.0.0"
  gem.add_runtime_dependency "virtus", ">= 0.5.5"
  gem.add_runtime_dependency "nokogiri"
end
