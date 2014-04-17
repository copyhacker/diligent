# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'diligent/version'

Gem::Specification.new do |s|
  s.name        = 'diligent'
  s.version     = Diligent::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.date        = '2014-03-24'
  s.summary     = "Comb your gems for licensing info and collate it nicely for the lawyers."
  s.description = "Comb your gems for licensing info and collate it nicely for the lawyers."
  s.authors     = [ "Jonathan Vaught" ]
  s.email       = 'jonathan.vaught@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.executables   = [ "diligent" ]
  s.test_files  = `git ls-files -- spec/*`.split("\n")
  s.require_paths = [ "lib" ]
  s.homepage    =
    'https://github.com/copyhacker/diligent'
  s.license       = 'MIT'

  s.add_runtime_dependency 'thor', '~> 0'
end
