# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ihuyi/version'

Gem::Specification.new do |spec|
  spec.name          = "ihuyi"
  spec.version       = Ihuyi::VERSION
  spec.authors       = ["debbbbie"]
  spec.email         = ["debbbbie@163.com"]
  spec.summary       = %q{ call ihuyi Api to send short message. }
  spec.description   = %q{ call ihuyi Api to send short message. }
  spec.homepage      = "https://github.com/debbbbie/ihuyi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "rest-client"
end
