# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-vimeo/version"

Gem::Specification.new do |gem|
  gem.name        = "omniauth-vimeo"
  gem.version     = Omniauth::Vimeo::VERSION
  gem.authors     = ["Benjamin Fritsch"]
  gem.email       = ["ben@lomography.com"]
  gem.homepage    = "https://github.com/lomography/omniauth-vimeo"
  gem.description = %q{OmniAuth strategy for Vimeo}
  gem.summary     = gem.description

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  gem.add_development_dependency "rspec", "~> 2.9"
  gem.add_development_dependency 'rake', '~> 0.9'

  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
end
