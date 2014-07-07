# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wohnung/version'

Gem::Specification.new do |spec|
  spec.name          = "wohnung"
  spec.version       = Wohnung::VERSION
  spec.authors       = ["Rotem Harel"]
  spec.email         = ["me@rotemharel.com"]
  spec.summary       = %q{Business logic for the Wohnung application.}
  #spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'mongo_mapper'
  spec.add_development_dependency "bson_ext", "1.5.2"

end
