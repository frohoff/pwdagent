# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pwdagent/version'

Gem::Specification.new do |spec|
  spec.name          = "pwdagent"
  spec.version       = PwdAgent::VERSION
  spec.authors       = ["Chris Frohoff"]
  spec.email         = ["chris@frohoff.org"]
  spec.description   = "" 
  spec.summary       = "gem for serving up passwords from memory via TCP or UNIX sockets" 
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'codeclimate-test-reporter'

  spec.add_dependency "slop"
end
