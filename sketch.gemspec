# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sketch/version"

Gem::Specification.new do |s|
  s.name        = "sketch"
  s.version     = Sketch::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jason Coffin"]
  s.email       = ["jasoncof@gmail.com"]
  s.homepage    = "https://github.com/jcoffin/sketch"
  s.summary     = %q{Sketch is another content management system (CMS).}
  s.description = %q{Sketch is meant to be used by itself or as middleware for Rack applications.}
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("sinatra", "~> 1.2")

  s.add_development_dependency("shotgun", ">= 0.9")
  s.add_development_dependency("minitest", ">= 2.1")
  s.add_development_dependency("rack-test", ">= 0.5")
end
