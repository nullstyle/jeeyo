# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jeeyo/version', __FILE__)

Gem::Specification.new do |gem|
  
  gem.authors       = ["Scott Fleckenstein"]
  gem.email         = ["nullstyle@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jeeyo"
  gem.require_paths = ["lib"]
  gem.version       = Jeeyo::VERSION
  
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ">= 2.10.0"
  gem.add_development_dependency "autotest"

  gem.add_runtime_dependency "ruby-units", "~> 1.4.1"
  gem.add_runtime_dependency "activesupport", ">= 3.0.0"
end
