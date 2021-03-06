# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_sandbox/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_sandbox"
  spec.version       = RailsSandbox::VERSION
  spec.authors       = ["Shou Ya"]
  spec.email         = ["shouyatf@gmail.com"]
  spec.summary       = %q{set up a protective sandbox for database transactions}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/shouya/rails_sandbox"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "activerecord"
end
