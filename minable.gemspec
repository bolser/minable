# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "minable/version"

Gem::Specification.new do |s|
  s.name        = "minable"
  s.version     = Minable::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joe Dinsdale", "Luke Barratt"]
  s.email       = ["mrjdinsdale@gmail.com"]
  s.license     = 'MIT'
  s.homepage    = "https://github.com/bolser/minable"
  s.summary     = "Sass Mixins using SCSS syntax."
  s.description = <<-DESC
    Minable is a minimal CSS framework written in SCSS.
  DESC

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('sass', '>= 3.3.0.rc.2')
  s.add_dependency('thor')

  s.add_development_dependency('aruba', '~> 0.4')
  s.add_development_dependency('rake')
end
