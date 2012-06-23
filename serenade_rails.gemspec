# -*- encoding: utf-8 -*-
require File.expand_path('../lib/serenade_rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jonas Nicklas"]
  gem.email         = ["jonas.nicklas@gmail.com"]
  gem.description   = %q{Use Serenade.js within the Rails asset pipeline}
  gem.summary       = %q{Serenade.js for Rails}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "serenade_rails"
  gem.require_paths = ["lib"]
  gem.version       = SerenadeRails::VERSION

  gem.add_dependency "rails", "~> 3.1"
  gem.add_dependency "execjs", ">= 0.3.0"
  gem.add_development_dependency "rspec", "~> 2.0"
end
