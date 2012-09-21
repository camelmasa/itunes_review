# -*- encoding: utf-8 -*-
version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |gem|
  gem.authors       = ["camelmasa"]
  gem.email         = ["camelmasa@gmail.com"]
  gem.description   = %q{iTunes review list}
  gem.summary       = %q{iTunes review list}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "itunes_review"
  gem.require_paths = ["lib"]
  gem.version       = version

  gem.add_dependency 'hpricot'
  gem.add_dependency 'httparty'
end
