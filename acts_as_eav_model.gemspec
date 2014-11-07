# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_eav_model/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_eav_model"
  spec.version       = ActsAsEavModel::VERSION
  spec.authors       = ["Marcus Wyatt"]
  spec.email         = [""]
  spec.summary       = %q{Entity Attribute Value Implementation for inclusion in ActiveRecord models.}
  spec.description   = <<-EOF
    Entity-attribute-value model (EAV) is a data model that is used in circumstances
    where the number of attributes (properties, parameters) that can be used to describe
    a thing (an "entity" or "object") is potentially very vast, but the number that will
    actually apply to a given entity is relatively modest.
  EOF
  spec.homepage      = "https://github.com/g5search/acts_as_eav_model"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.extra_rdoc_files      = ["README.rdoc", "TODO"]
  spec.required_ruby_version = "> 1.9"

  spec.add_dependency "rails", "~> 3.0.7"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-rails", "~> 2.0"
  spec.add_development_dependency "ruby-debug19"
  spec.add_development_dependency "sqlite3"
end
