$:.push File.expand_path("../lib", __FILE__)
require "roar/version"

Gem::Specification.new do |s|
  s.name        = "tastyworks-roar"
  s.version     = Roar::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nick Sutterer", "tastyworks"]
  s.email       = ["apotonick@gmail.com", "developers@tastyworks.com"]
  s.homepage    = "https://github.com/tastyworks/roar"
  s.summary     = %q{Parse and render REST API documents using representers.}
  s.description = %q{Object-oriented representers help you defining nested REST API documents which can then be rendered and parsed using one and the same concept.}
  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "tastyworks-representable", "2.3.0.3"

  s.add_development_dependency "rake", ">= 0.10.1"
  s.add_development_dependency "test_xml", "0.1.6"
  s.add_development_dependency "minitest",	">= 5.4.2"
  s.add_development_dependency "sinatra"
  s.add_development_dependency "sinatra-contrib"
  s.add_development_dependency "virtus", ">= 1.0.0"
  s.add_development_dependency "faraday"
  s.add_development_dependency "json"
end
