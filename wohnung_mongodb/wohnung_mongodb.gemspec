# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wohnung_mongodb/version'

Gem::Specification.new do |spec|
  spec.name          = "wohnung_mongodb"
  spec.version       = WohnungMongodb::VERSION
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

  spec.add_dependency "wohnung"
end
