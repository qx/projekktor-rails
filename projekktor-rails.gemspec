# -*- encoding: utf-8 -*-
require File.expand_path('../lib/projekktor-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Infopark AG"]
  gem.email         = ["info@infopark.de"]
  gem.description   = %q{projekktor-rails provides the video player projekktor via Rails asset pipeline.}
  gem.summary       = %q{projekktor-rails}
  gem.homepage      = "https://github.com/infopark/projekktor-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "projekktor-rails"
  gem.require_paths = ["lib"]
  gem.version       = Projekktor::Rails::VERSION
end
