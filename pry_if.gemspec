# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pry_if/version'

Gem::Specification.new do |spec|
  spec.name          = 'pry_if'
  spec.version       = PryIf::VERSION
  spec.authors       = ['Donavan Stanley']
  spec.email         = ['donavan.stanley@centricconsulting.com']

  spec.summary       = %q{A conditional Pry}
  spec.description   = %q{A safer version of binding.pry that will not be removed by Rubocop}
  spec.homepage      = 'https://github.com/donavan/pry_if'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
end
