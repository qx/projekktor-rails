# -*- encoding: utf-8 -*-
require File.expand_path('../lib/projekktor-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Thomas Ritz"]
  gem.email         = ["tritz@infopark.de"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "projekktor-rails"
  gem.require_paths = ["lib"]
  gem.version       = Projekktor::Rails::VERSION
end
