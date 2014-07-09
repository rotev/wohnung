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
  spec.description   = %q{Business logic for the Wohnung application, foo!}
  spec.homepage      = "http://github.com/rotev/wohnung"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.6"
  spec.add_dependency 'rspec', "3.0.0"
  spec.add_dependency 'mongo_mapper', "0.12.0"
  spec.add_dependency "bson_ext", "1.5.2"

end
