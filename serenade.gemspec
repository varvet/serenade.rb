# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "serenade/version"

Gem::Specification.new do |gem|
  gem.name          = "serenade"
  gem.version       = Serenade::VERSION

  gem.authors       = ["Jonas Nicklas", "Kim Burgestrand"]
  gem.email         = ["jnicklas@gmail.com", "kim@burgestrand.se"]
  gem.license       = "MIT License"

  gem.summary       = "Serenade.js for Ruby, Rails, and Sprockets"
  gem.homepage      = "https://github.com/elabs/serenade.rb"
  gem.description   = <<-TEXT
- Use serenade.js with the Rails asset pipeline.
- Use serenade.js with any sprockets application (middlemanapp, sinatra).
- Prerender serenade.js views server-side, before it even reaches the client.
TEXT

  gem.add_dependency "execjs", ">= 0.3.0"
  gem.add_dependency "multi_json"
  gem.add_development_dependency "rspec", "~> 2.0"
  gem.add_development_dependency "sprockets", "~> 2.0"
  gem.add_development_dependency "rails", "~> 3.1"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
end
