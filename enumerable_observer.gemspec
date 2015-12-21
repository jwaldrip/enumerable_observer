# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'enumerable_observer/version'

Gem::Specification.new do |spec|
  spec.name          = "enumerable_observer"
  spec.version       = EnumerableObserver::VERSION
  spec.authors       = ["Jason Waldrip"]
  spec.email         = ["jason@waldrip.net"]

  spec.summary       = %q{Observe changes in enumerable objects in ruby and run callbacks when items are
added or removed.}
  spec.homepage      = "https://github.com/jwaldrip/enumerable_observer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "unstrict_proc"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
