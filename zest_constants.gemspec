# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zest_constants/version'

Gem::Specification.new do |spec|
  spec.name          = "zest_constants"
  spec.version       = ZestConstants::VERSION
  spec.authors       = ["Eric Hu"]
  spec.email         = ["ehu@pivotallabs.com"]
  spec.summary       = %q{A constant silo}
  spec.description   = %q{Keep the definition of your constants in one place}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
