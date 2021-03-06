# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'idobadge/version'

Gem::Specification.new do |spec|
  spec.name          = "idobadge"
  spec.version       = Idobadge::VERSION
  spec.authors       = ["Seiei Higa"]
  spec.email         = ["hanachin@gmail.com"]
  spec.summary       = %q{Text badges generator for idobata.io generic webhook.}
  spec.homepage      = "https://github.com/hanachin/idobadge"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest-power_assert"
end
