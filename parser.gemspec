require_relative 'lib/parser/version'

Gem::Specification.new do |spec|
  spec.name          = "parser"
  spec.version       = Parser::VERSION
  spec.authors       = ["sabyasachi_palit"]
  spec.email         = ["sabyasachi.palit@quantuminventions.com"]

  spec.summary       = "Parser"
  spec.description   = "Parser"
  spec.homepage      = "http://mygemserver.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://mygemserver.com"
  spec.metadata["changelog_uri"] = "http://mygemserver.com"

  spec.license       = 'Nonstandard'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files`.split("\n")

  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry", ["=0.13.1"]
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_runtime_dependency "nokogiri", [">= 1.11.7"]
end






