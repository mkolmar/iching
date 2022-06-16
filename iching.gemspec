# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "iching"
  s.version     = "0.4.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matt Mills","Mark Kolmar"]
  s.email       = ["sunrisetimes@gmail.com","mark@burningrome.com"]
  s.homepage    = "http://github.com/mmkolmar/iching"
  s.summary     = "Generate I Ching hexagrams, with changing lines and changed hexagram"
  s.description = "Generate I Ching hexagrams, with changing lines and changed hexagram"
  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.license = 'MIT'
end
