# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mascherano/version'

Gem::Specification.new do |spec|
  spec.name          = "mascherano"
  spec.version       = Mascherano::VERSION
  spec.authors       = ["Alif Rachmawadi"]
  spec.email         = ["subosito@gmail.com"]
  spec.description   = %q{Capistrano 3.x recipes}
  spec.summary       = %q{Capistrano 3.x recipes}
  spec.homepage      = "https://github.com/subosito/mascherano"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.0.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
