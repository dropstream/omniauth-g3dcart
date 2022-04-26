# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-g3dcart/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dropstream"]
  gem.email         = [""]
  gem.description   = %q{3dcart OAuth2 strategy for OmniAuth}
  gem.summary       = %q{3dcart OAuth2 strategy for OmniAuth}
  gem.homepage      = "https://github.com/dropstream/omniauth-g3dcart"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-g3dcart"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::G3dcart::VERSION

  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rake"
end
