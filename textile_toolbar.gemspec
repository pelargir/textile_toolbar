# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textile_toolbar/version'

Gem::Specification.new do |spec|
  spec.name          = "textile_toolbar"
  spec.version       = TextileToolbar::VERSION
  spec.authors       = ["Matthew Bass"]
  spec.email         = ["pelargir@gmail.com"]
  spec.description   = %q{Adds a handy Textile toolbar to any text area.}
  spec.summary       = %q{Adds a handy Textile toolbar to any text area.}
  spec.homepage      = "http://github.com/pelargir/textile_toolbar"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "shoulda"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "rails", "~> 3.2"
end
