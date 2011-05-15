# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zipcodr/version"

Gem::Specification.new do |s|
  s.name        = "zipcodr"
  s.version     = Zipcodr::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Wael Al-Sallami"]
  s.email       = ["wael.alsallami@gmail.com"]
  s.homepage    = "wa3l.com"
  s.summary     = %q{A library for looking up zip codes and their associated info.}
  s.description = %q{A library for looking up zip codes and their associated info.}

  s.rubyforge_project = "zipcodr"
  s.add_development_dependency('sqlite3-ruby')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
