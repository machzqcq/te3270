# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'te3270/version'

Gem::Specification.new do |spec|
  spec.name = "te3270-jruby"
  spec.version       = TE3270::VERSION
  spec.platform      = Gem::Platform::CURRENT
  spec.authors = ["Pradeep K. Macharla", "Jeffrey S. Morgan"]
  spec.email = ["pradeep@seleniumframework.com", "jeff.morgan@leandog.com"]
  spec.description   = %q{Automates a 3270 Terminal Emulator}
  spec.summary       = %q{Automates a 3270 Terminal Emulator}
  spec.homepage = "http://github.com/machzqcq/te3270"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'page_navigation', '>= 0.9'
  spec.add_dependency 'jruby-win32ole'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

