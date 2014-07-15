# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'concisecss/version'

Gem::Specification.new do |spec|
  spec.name          = "concisecss"
  spec.version       = Concisecss::VERSION
  spec.authors       = ["Benjamin Sigidi"]
  spec.email         = ["benjamin@sigididesign.com"]
  spec.summary       = "Concise is built from the ground-up for mobile devices. This means it will look great on all devices."
  spec.description   = "Concise is built on a set of simple but important principles that aid in effective and manageable web design. By understanding these principles, Concise can be used to it's full potential and we can create a better paradigm for using HTML and CSS to build websites."
  spec.homepage      = "http://concisecss.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
