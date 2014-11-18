# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'minable/version'

Gem::Specification.new do |s|
  s.name        = 'minable'
  s.version     = Minable::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Joe Dinsdale', 'Luke Barratt']
  s.email       = ['digital@bolser.co.uk', 'luke@barratt.me']
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/bolser/minable'
  s.summary     = 'Sass Mixins using SCSS syntax.'
  s.description = 'Minable is a minimal Sass mixin and UI framework written in SCSS.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('sass', '~> 3.2.14')
  s.add_dependency('thor', '~> 0.19.1')

  s.add_development_dependency('aruba', '~> 0.6.1')
  s.add_development_dependency('rake', '~> 10.3.2')
end
